
(*
 * NOTE: we may not want to push on every interval, thats why this method works like a deligator
 * TODO: aldo make method snippets for the ipad
 * NOTE: you only need to merge if you are ready to push
 *)
on interval_test(local_file_path,remote_path,branch)
	commit_interval_test()
	push_interval_test()
end interval_test
(*
 * Commit un commited files
 *)
on commit_interval_test(local_file_path,branch)
	GitSync's do_commit(local_path,branch)
end commit_interval_test
(*
 * We must always merge the remote branch into the local branch before we push our changes. 
 * NOTE: this method performs a "manual pull" on every interval 
 *)
on push_interval_test(local_file_path,remote_path, branch)
	OnIntervalTest's manual_merge(local_path,remote_path,branch,branch)--commits, merges with promts
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
	repeat with unmerged_file in unmerged_files
		--promt user with list of options, title: Merge conflict in: unmerged_file
		on handle_merge_conflict_dialog
			set choice to text of button retruned
			if choice is "keep local version" then
				GitUtil's check_out(local_repo_path,"--ours", unmerged_file)
			else if choice is "keep remote version" then
				--git checkout --theirs filename
			else if choice is "keep mix of both versions" then
				--git checkout master filename
			else if choice is "open local version" then
				--checkout --ours file_name
				--tell finder to open unmerged_file
			else if choice is "open remote version" then
				--checkout --theirs file_name
				--tell finder to open unmerged_file
			else if choice is "open mix of both versions" then
				--checkout --master file_name
				--tell finder to open unmerged_file
			else if choice is "keep all local versions" then
				--git checkout --ours *
			else if choice is "keep all remote versions" then
				--git checkout --theirs *
			else if choice is "keep all local and remote versions" then
				--checkout master
			else if choice is "open all local versions" then
				--checkout --ours *
				--tell finder to open unmerged_file
			else if choice is "open all remote versions" then
				--checkout --theirs *
				--tell finder to open unmerged_file
			else if choice is "open all local and remote versions" then
				--checkout --ours master
				--tell finder to open unmerged_file
			end if
		end handle_merge_conflict_dialog
	end repeat	
end resolve_merge_conflicts