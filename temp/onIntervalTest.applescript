(*
 * NOTE: this method performs a "manual pull" on every interval 
 *	--TODO: aldo make method snippets for the ipad
 * TODO: finish this method and test, needs parameters, calll to do_commit, and merge call, params in other calls aswell
 *)
on interval_test(local_file_path,)
	if has_unstaged files then git add *
	if has_staged files then 
		--create commit message
		--git commit 
	end if
	--git fetch remote
	set is_remote_branch_ahead to GitAsserter's is_remote_branch_ahead(local_repo_path,remote_path,local_branch,remote_branch)--use the git log oneline thing here
	--TODO: resolve the bellow lines with a try error on the method manual_pull
	
	--thinkkkkkkkkk
	
	if is_remote_branch_ahead then
		--merge master master/origin
		set conflicting_files to --compile a list of conflicting files somehow
		set has_merge_conflicts to conflicting_files > 0
		if has_merge_conflicts then
			resolve_merge_conflicts()
		end if--has_merge_conflicts
		if has_unstaged_files then--assert this vi a direct method call
			--git add *
		end if
		if has_staged_files then--assert this vi a direct method call
			--create commit message
			--git commit 
		end if
		if has_commits then
			--git push master origin/master
		end if
	else 
end interval_test
(*
 * Manual merge
 * NOTE: tries to merge a remote branch into a local branch
 * NOTE: promts users if merge conflicts occure
 *)
on manual_merge(local_path,remote_path,into_branch,from_branch)
	GitSync's do_commit(local_path)--adds unstaged files, creates a commit msg w/ description and then commits it, you have to commit your local changes before you try to merge with a remote branch
    try
    	manual_pull(local_path,remote_path,from_branch)--manual clone down files
    error errMsg--merge conflicts
    	 --TODO: finish the method bellow, do test in terminal, you may do git staus or git diff to get this, maybe git staus -s, they will show up as unmerged paths
       set conflicting_files to conflict_files(local_path)--compile a list of conflicting files somehow
       OnIntervalTest's resolve_merge_conflicts(local_path)--promt user, merge conflicts occured, resolve by a list of options, title: conflict in file text.txt: use local, use remote, use a mix (opens it up in textedit), use all local, use all remote, use all mix 
    	 GitSync's do_commit(local_path)--add,commit if any files has an altered status
    end try
end manual_merge
(*
 * TODO: try this in terminal: git diff --name-only --diff-filter=U
 * # On branch master
   # Unmerged paths:
	# (use "git add/rm ..." as appropriate to mark resolution)
	#
	# both modified: hello.py
	#
 *)
on conflict_files(local_path)
	set the_status to GitUtil's staus(local_path,"-s")
	return paragraphs of the_status
end conflict_files
(*
 * Promts the user with a list of options to aid in resolving merge conflicts
 * @param branch: the branch you tried to merge into
 * TODO: move to GitSync.applescript when testing is complete
 *)
on resolve_merge_conflicts(local_repo_path,branch,conflicting_files)
	repeat with conflicting_file in conflicting_files
		--promt user with list of options, title: Merge conflict in: conflicting_file
		on handle_merge_conflict_dialog
			set choice to text of button retruned
			if choice is "keep local version" then
				GitUtil's check_out(local_repo_path,"--ours", conflicting_file)
			else if choice is "keep remote version" then
				--git checkout --theirs filename
			else if choice is "keep mix of both versions" then
				--git checkout master filename
			else if choice is "open local version" then
				--checkout --ours file_name
				--tell finder to open conflicting_file
			else if choice is "open remote version" then
				--checkout --theirs file_name
				--tell finder to open conflicting_file
			else if choice is "open mix of both versions" then
				--checkout --master file_name
				--tell finder to open conflicting_file
			else if choice is "keep all local versions" then
				--git checkout --ours *
			else if choice is "keep all remote versions" then
				--git checkout --theirs *
			else if choice is "keep all local and remote versions" then
				--checkout master
			else if choice is "open all local versions" then
				--checkout --ours *
				--tell finder to open conflicting_file
			else if choice is "open all remote versions" then
				--checkout --theirs *
				--tell finder to open conflicting_file
			else if choice is "open all local and remote versions" then
				--checkout --ours master
				--tell finder to open conflicting_file
			end if
		end handle_merge_conflict_dialog
	end repeat	
end resolve_merge_conflicts