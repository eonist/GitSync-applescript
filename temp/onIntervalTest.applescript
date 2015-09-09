(*
 * TODO: finish this method and test
 *)
on interval_test()
	if has_unstaged files then git add *
	if has_staged files then 
		--create commit message
		--git commit 
	end if
	--git fetch remote
	set has_remote_change to --use the git log oneline thing here
	if has_remote_change then
		merge master master/origin
		set conflicting_files to --compilem a list of conflicting files somehow
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