property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property GitUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitUtil.applescript"))
--TODO: test the bellow import first

property GitSync : my ScriptLoader's load(path to me, "GitSync.applescript")

(*
 * NOTE: we may not want to push on every interval, thats why this method works like a deligator
 * NOTE: you only need to merge if you are ready to push
 *)
on interval_test(local_file_path,remote_path,branch)
	commit_interval_test()
	push_interval_test()
end interval_test
(*
 * Commit un-commited files
 *)
on commit_interval_test(local_file_path,branch)
	GitSync's do_commit(local_path,branch)
end commit_interval_test
(*
 * We must always merge the remote branch into the local branch before we push our changes. 
 * NOTE: this method performs a "manual pull" on every interval 
 *)
on push_interval_test(local_file_path,remote_path, branch)
	manual_merge(local_path,remote_path,branch,branch)--commits, merges with promts
	set has_local_commits to GitAsserter's has_local_commits(local_file_path,branch)
	if has_local_commits then--only push if there is something to push
		set keychain_data to KeychainParser's keychain_data("github eonist")
		set keychain_password to the_password of keychain_data
		set remote_account_name to account_name of keychain_data
		set push_call_back to GitUtil's push(local_file_path, remote_path, remote_account_name, keychain_password)--TODO: add branch 
	end if
end push_interval_test
(*
 * Manual merge
 * NOTE: tries to merge a remote branch into a local branch
 * NOTE: promts users if merge conflicts occure
 * NOTE: we use two branch params here since its entirly possible to merge from a different remote branch
 *)
on manual_merge(local_path,remote_path,into_branch,from_branch)
	GitSync's do_commit(local_path)--adds unstaged files, creates a commit msg w/ description and then commits it, you have to commit your local changes before you try to merge with a remote branch
	try
		manual_pull(local_path,remote_path,from_branch)--manual clone down files
	error errMsg--merge conflicts
	   set unmerged_files to GitParser's unmerged_files(local_path)--compile a list of conflicting files somehow
	   OnIntervalTest's resolve_merge_conflicts(local_path)--promt user, merge conflicts occured, resolve by a list of options, title: conflict in file text.txt: use local, use remote, use a mix (opens it up in textedit), use all local, use all remote, use all mix 
		 GitSync's do_commit(local_path)--add,commit if any files has an altered status
	end try
end manual_merge
(*
 * Promts the user with a list of options to aid in resolving merge conflicts
 * @param branch: the branch you tried to merge into
 * TODO: move to GitSync.applescript when testing is complete
 *)
on resolve_merge_conflicts(local_repo_path,branch,unmerged_files)
	set options to {"keep local version","keep remote version","keep mix of both versions","open local version","open remote version","open mix of both versions","keep all local versions","keep all remote versions","keep all local and remote versions","open all local versions","open all remote versions","open all mixed versions"}
	repeat with unmerged_file in unmerged_files
		set last_selected_action to first item in options--you may want to make this a property to store the last item more permenantly
		set the_action to choose from list options with title "Resolve merge conflict in:" with prompt unmerged_file&":" default items {last_selected_action} cancel button name "Exit"--promt user with list of options, title: Merge conflict in: unmerged_file
		--handle_action_choice(the_action)
		
	end repeat	
end resolve_merge_conflicts