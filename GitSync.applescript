--Scripts:
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property TextParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "text:TextParser.applescript"))
property ListModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListModifier.applescript"))
property GitParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitParser.applescript"))
property GitAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitAsserter.applescript"))
property GitModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitModifier.applescript"))
property GitUtil : my ScriptLoader's load(path to scripts folder from user domain, "git:GitUtil.applescript")
property XMLParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLParser.applescript"))
property ShellUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "shell:ShellUtil.applescript"))
property KeychainParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "shell:KeychainParser.applescript"))
property FileParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileParser.applescript"))
property FileModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileModifier.applescript"))
property FileAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileAsserter.applescript"))
property RegExpUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "regexp:RegExpUtil.applescript"))

--Properties:
property current_time : 0 --keeps track of the time passed, remember to reset this value pn every init
property the_interval : 1 --static value, increases the time by this value on every interval--TODO: rename to "frequncy" default is set to 60
property repo_list : null --Stores all values the in repositories.xml, remember to reset this value pn every init
property repo_file_path : ""
property options : {"keep local version", "keep remote version", "keep mix of both versions", "open local version", "open remote version", "open mix of both versions", "keep all local versions", "keep all remote versions", "keep all local and remote versions", "open all local versions", "open all remote versions", "open all mixed versions"}
set current_time to 0 --always reset this value on init, applescript has persistent values
initialize()
(*
 * Initialize the app, toggles between debug and deploy mode depending fromwhich file type it is run from
 *)
on initialize()
	if (FileParser's file_name(path to me) = "GitSync.applescript") then --debug mode
		set repo_file_path to FileParser's hfs_parent_path(path to me) & "repo.xml"
		log repo_file_path
		if (ShellUtil's wait_for_internet()) then handle_interval()
	else --deploy mode
		set repo_file_path to ((path to me) & "Contents" & ":" & "Resources" & ":" & "repo.xml") as text
		if (FileAsserter's does_file_exist(repo_file_path) = false) then --if the xml is empty, add some static values to it
			set the_repo_xml to my RepoUtil's repo_xml()
			FileModifier's write_data(the_repo_xml, repo_file_path, false) --create the repo.xml file inside the GitSync.app
		end if --else do nothing, the repo.xml already exists
	end if
end initialize
(*
 * This will be called on init and then every 60 seconds or the time you specifiy in the return value
 * NOTE: this will only be called from an .app mode aka "deploy mode" / "production mode"
 *)
on idle {}
	if (ShellUtil's wait_for_internet()) then handle_interval()
	return the_interval --the_interval --return new idle time in seconds
end idle
(*
 * Handles the process of comitting and pushing for multiple repositories
 * This is called on every interval
 * NOTE: while testing you can call this manually, since idle will only work when you run it from an .app
 *)
on handle_interval()
	log "handle_interval()"
	set repo_list to my RepoUtil's compile_repo_list(repo_file_path) --try to avoid calling this on every intervall, its nice to be able to update on the fly, be carefull though
	set current_time_in_min to (current_time / 60) --divide the seconds by 60 seconds to get minutes
	log "current_time_in_min: " & current_time_in_min
	repeat with repo_item in repo_list --iterate over every repo item
		if (current_time_in_min mod (interval of repo_item) = 0) then handle_commit_interval(repo_item, "master") --is true every time spesified by the user
		if (current_time_in_min mod (interval of repo_item) = 0) then handle_push_interval(repo_item, "master") --is true every time spesified by the user
	end repeat
	set current_time to current_time + the_interval --increment the interval (in seconds)
end handle_interval
(*
 * Handles the process of making a commit for a single repository
 *)
on handle_commit_interval(repo_item, branch)
	log "GitSync's handle_commit_interval() a repo with remote path: " & (remote_path of repo_item) & " local path: " & (local_path of repo_item)
	if (GitAsserter's has_unmerged_paths(local_path of repo_item)) then --Asserts if there are unmerged paths that needs resolvment
		log tab & "has unmerged paths to resolve"
		my MergeUtil's resolve_merge_conflicts(local_path of repo_item, branch, GitParser's unmerged_files(local_path of repo_item)) --Asserts if there are unmerged paths that needs resolvment
	end if
	log do_commit(local_path of repo_item) --if there were no commits false will be returned
	--log "has_commited: " & has_commited
end handle_commit_interval
(*
 * Handles the process of making a push for a single repository
 * NOTE: We must always merge the remote branch into the local branch before we push our changes. 
 * NOTE: this method performs a "manual pull" on every interval
 * TODO: contemplate implimenting a fetch call after the pull call, to update the status, whats the diff between git fetch and git remote update again?
 *)
on handle_push_interval(repo_item, branch)
	log ("GitSync's handle_push_interval()")
	my MergeUtil's manual_merge((local_path of repo_item), (remote_path of repo_item), branch) --commits, merges with promts, (this method also test if a merge is needed or not, and skips it if needed)
	set has_local_commits to GitAsserter's has_local_commits((local_path of repo_item), branch) --TODO: maybe use GitAsserter's is_local_branch_ahead instead of this line
	if (has_local_commits) then --only push if there are commits to be pushed, hence the has_commited flag, we check if there are commits to be pushed, so we dont uneccacerly push if there are no local commits to be pushed, we may set the commit interval and push interval differently so commits may stack up until its ready to be pushed, read more about this in the projects own FAQ
		set the_keychain_item_name to (keychain_item_name of repo_item)
		log "the_keychain_item_name: " & the_keychain_item_name
		set keychain_data to KeychainParser's keychain_data(keychain_item_name of repo_item)
		set keychain_password to the_password of keychain_data
		log "keychain_password: " & keychain_password
		set remote_account_name to account_name of keychain_data
		log "remote_account_name: " & remote_account_name
		set push_call_back to GitModifier's push(local_path of repo_item, remote_path of repo_item, remote_account_name, keychain_password, branch)
		log "push_call_back: " & push_call_back
	end if
end handle_push_interval
(*
 * This method generates a git status list,and asserts if a commit is due, and if so, compiles a commit message and then tries to commit
 * Returns true if a commit was made, false if no commit was made or an error occured
 * NOTE: checks git staus, then adds changes to the index, then compiles a commit message, then commits the changes, and is now ready for a push
 * NOTE: only commits if there is something to commit
 * TODO: add branch parameter to this call
 * NOTE: this a purly local method, does not need to communicate with remote servers etc..
 *)
on do_commit(local_repo_path)
	log ("GitSync's do_commit()")
	--log "do_commit"
	set status_list to my StatusUtil's generate_status_list(local_repo_path) --get current status
	if (length of status_list > 0) then
		log tab & "there is something to add or commit"
		--log tab & "length of status_list: " & (length of status_list)
		my StatusUtil's process_status_list(local_repo_path, status_list) --process current status by adding files, now the status has changed, some files may have disapared, some files now have status as renamed that prev was set for adding and del
		set commit_msg_title to my CommitUtil's sequence_commit_msg_title(status_list) --sequence commit msg title for the commit
		log tab & "commit_msg_title: " & commit_msg_title
		set commit_msg_desc to my DescUtil's sequence_description(status_list) --sequence commit msg description for the commit
		log tab & "commit_msg_desc: " & commit_msg_desc
		try --try to make a git commit
			set commit_result to GitModifier's commit(local_repo_path, commit_msg_title, commit_msg_desc) --commit
			log tab & "commit_result: " & commit_result
		on error errMsg
			log tab & "----------------ERROR:-----------------" & errMsg
		end try
		return true --return true to indicate that the commit completed
	else
		log tab & "nothing to add or commit"
		return false --break the flow since there is nothing to commit or process
	end if
end do_commit
(*
 * Utility methods for parsing the the "git status message" 
 *)
script CommitUtil
	(*
	 * Returns a a text "commit message title" derived from @param status_list
	 * @param status_list: a list with records that contain staus type, file name and state
	 * NOTE: C,I,R seems to never be triggered, COPIED,IGNORED,REMOVED,
	 * NOTE: In place of Renamed, Git first deletes the file then says its untracked
    *)
	on sequence_commit_msg_title(status_list)
		set num_of_new_files to 0
		set num_of_modified_files to 0
		set num_of_deleted_files to 0
		set num_of_renamed_files to 0
		repeat with status_item in status_list
			set cmd to cmd of status_item --TODO: rename to type or status_type
			if (cmd = "M") then
				set num_of_modified_files to num_of_modified_files + 1
			else if (cmd = "D") then
				set num_of_deleted_files to num_of_deleted_files + 1
			else if (cmd = "A") then
				set num_of_new_files to num_of_new_files + 1
			else if (cmd = "R") then --This command seems to never be triggered in git
				set num_of_renamed_files to num_of_renamed_files + 1
			else if (cmd = "??") then --untracked files,
				set num_of_new_files to num_of_new_files + 1
			else if (cmd = "UU") then --unmerged files,
				set num_of_modified_files to num_of_modified_files + 1
			end if
		end repeat
		set commit_msg to ""
		if (num_of_new_files > 0) then
			set commit_msg to commit_msg & "New files added: " & num_of_new_files
		end if
		if (num_of_modified_files > 0) then
			if (length of commit_msg > 0) then set commit_msg to commit_msg & ", " --append comma
			set commit_msg to commit_msg & "Files modified: " & num_of_modified_files
		end if
		if (num_of_deleted_files > 0) then
			if (length of commit_msg > 0) then set commit_msg to commit_msg & ", " --append comma
			set commit_msg to commit_msg & "Files deleted: " & num_of_deleted_files
		end if
		if (num_of_renamed_files > 0) then
			if (length of commit_msg > 0) then set commit_msg to commit_msg & ", " --append comma
			set commit_msg to commit_msg & "Files renamed: " & num_of_renamed_files
		end if
		return commit_msg
	end sequence_commit_msg_title
end script
(*
 * Utility methods for generating the "Git Commit Message Description"
 *)
script DescUtil
	(*
	 * Returns a "Git Commit Message Description" derived from a "git status list" with "status items records"
	 *)
	on sequence_description(status_list)
		set desc_text to ""
		set modified_items to {}
		set deleted_items to {}
		set added_items to {}
		repeat with status_item in status_list
			if (cmd of status_item is "D") then set deleted_items to ListModifier's add_list(deleted_items, status_item) --add a record to a list
			if (cmd of status_item is "M") then set modified_items to ListModifier's add_list(modified_items, status_item) --add a record to a list
			if (cmd of status_item is "??") then set added_items to ListModifier's add_list(added_items, status_item) --add a record to a list
			if (cmd of status_item is "UU") then set modified_items to ListModifier's add_list(modified_items, status_item) --add a record to a list
		end repeat
		set desc_text to desc_text & description_paragraph(added_items, "Added ") & return --add an extra line break at the end "paragraph like"
		set desc_text to desc_text & description_paragraph(deleted_items, "Deleted ") & return
		set desc_text to desc_text & description_paragraph(modified_items, "Modified ")
		return desc_text
	end sequence_description
	(*
	 * Returns a paragraph with a detailed description for Deleted, added and modified files
	 *)
	on description_paragraph(the_list, prefix_text)
		set desc_text to ""
		if (length of the_list > 0) then
			set the_suffix to " file"
			if (length of the_list > 1) then set the_suffix to the_suffix & "s" --multiple
			set desc_text to desc_text & prefix_text & length of the_list & the_suffix & ":" & return
			repeat with the_item in the_list
				set desc_text to desc_text & (file_name of the_item) & return
			end repeat
		end if
		return desc_text
	end description_paragraph
end script
(*
 * Utils for paraing the git status list
 *)
script StatusUtil
	(*
	 * Returns a descriptive status list of the current git changes
	 * NOTE: you may use short staus, but you must interpret the message if the state has an empty space infront of it
	 *)
	on generate_status_list(local_repo_path)
		set the_status to GitParser's status(local_repo_path, "-s") -- the -s stands for short message, and returns a short version of the status message, the short stauslist is used because it is easier to parse than the long status list
		--log tab & "the_status: " & the_status
		set the_status_list to TextParser's every_paragraph(the_status) --store each line as items in a list
		set transformed_list to {}
		if (length of the_status_list > 0) then
			set transformed_list to my transform_status_list(the_status_list)
		else
			--log "nothing to commit, working directory clean" --this is the status msg if there has happened nothing new since last, but also if you have commits that are ready for push to origin
		end if
		--log "len of the_status_list: " & (length of the_status_list)
		--log transformed_list
		return transformed_list
	end generate_status_list
	(*
 	 * Transforms the "compact git status list" by adding more context to each item (a list with acociative lists, aka records)
 	 * Returns a list with records that contain staus type, file name and state
 	 * NOTE: the short status msg format is like: "M" " M", "A", " A", "R", " R" etc
 	 * NOTE: the space infront of the capetalized char indicates Changes not staged for commit:
 	 * NOTE: Returns = renamed, M = modified, A = addedto index, D = deleted, ?? = untracked file
	 * NOTE: the state can be:  "Changes not staged for commit" , "Untracked files" , "Changes to be committed"
	 * @Param: the_status_list is a list with status messages like: {"?? test.txt"," M index.html","A home.html"}
	 * NOTE: can also be "UU" unmerged paths
 	 *)
	on transform_status_list(the_status_list)
		set transformed_list to {}
		repeat with the_status_item in the_status_list
			--log "the_status_item: " & the_status_item
			set the_status_parts to RegExpUtil's match(the_status_item, "^( )*([MARDU?]{1,2}) (.+)$") --returns 3 capturing groups, 
			--log "length of the_status_parts: " & (length of the_status_parts)
			--log the_status_parts
			if ((second item in the_status_parts) = " ") then --aka " M", remember that the second item is the first capturing group
				set cmd to third item in the_status_parts --Changes not staged for commit:
				set state to "Changes not staged for commit" -- you need to add them
			else -- Changes to be committed--aka "M " or  "??" or "UU"
				set cmd to third item in the_status_parts --rename cmd to type
				--log "cmd: " & cmd
				if (cmd = "??") then
					set state to "Untracked files"
				else if (cmd = "UU") then --Unmerged path
					--log "Unmerged path"
					set state to "Unmerged path"
				else
					set state to "Changes to be committed" --this is when the file is ready to be commited
				end if
			end if
			set file_name to the fourth item in the_status_parts
			--log "state: " & state & ", cmd: " & cmd & ", file_name: " & file_name --logs the file named added changed etc
			set status_item to {state:state, cmd:cmd, file_name:file_name} --store the individual parts in an accociative
			set transformed_list to ListModifier's add_list(transformed_list, status_item) --add a record to a list
		end repeat
		return transformed_list
	end transform_status_list
	(*
	 * Iterates over the status items and "git add" the item unless it's already added (aka "staged for commit")
	 * NOTE: if the status list is empty then there is nothing to process
	 * NOTE: even if a file is removed, its status needs to be added to the next commit
	 * TODO: Squash some of the states together with if or or or etc
	 *)
	on process_status_list(local_repo_path, status_list)
		--log "process_status_list()"
		repeat with status_item in status_list
			--log "len of status_item: " & (length of status_item)
			set state to state of status_item
			--set cmd to cmd of status_item
			set file_name to file_name of status_item
			if state = "Untracked files" then --this is when there exists a new file
				log tab & "1. " & "Untracked files"
				GitModifier's add(local_repo_path, file_name) --add the file to the next commit
			else if state = "Changes not staged for commit" then --this is when you have not added a file that has changed to the next commit
				log tab & "2. " & "Changes not staged for commit"
				GitModifier's add(local_repo_path, file_name) --add the file to the next commit
			else if state = "Changes to be committed" then --this is when you have added a file to the next commit, but not commited it
				log tab & "3. " & "Changes to be committed" --do nothing here
			else if state = "Unmerged path" then --This is when you have files that have to be resolved first, but eventually added aswell
				log tab & "4. " & "Unmerged path"
				GitModifier's add(local_repo_path, file_name) --add the file to the next commit
			end if
		end repeat
	end process_status_list
end script
(*
 * Utility methods for parsing the repository.xml file
 *)
script RepoUtil
	(*
 	 * Returns a list with repo values derived from an XML file
 	 * @param file_path is in HSF not POSIX
 	 * TODO: if the interval values is not set, then use default values
	 * TODO: test if the full/partly file path still works?
 	 *)
	on compile_repo_list(file_path) -- rename to generate_repo_list?
		--log "file_path: " & file_path
		set theXMLRoot to XMLParser's root(file_path)
		set num_children to length of XMLParser's every_element(theXMLRoot) --number of xml children in xml root element
		set the_repo_list to {}
		repeat with i from 1 to num_children
			set theXMLChild to XMLParser's element_at(theXMLRoot, i)
			set local_path to XMLParser's attribute_value_by_name(theXMLChild, "local-path") --this is the path to the local repository (we need to be in this path to execute git commands on this repo)
			set local_path to do shell script "echo " & quoted form of local_path & " | sed 's/ /\\\\ /g'" --Shell doesnt handle file paths with space chars very well. So all space chars are replaced with a backslash and space, so that shell can read the paths. 
			set remote_path to XMLParser's attribute_value_by_name(theXMLChild, "remote-path")
			set is_full_url to RegExpUtil's has_match(remote_path, "^https://.+$") --support for partial and full url
			if is_full_url = true then
				set remote_path to text 9 thru (length of remote_path) of remote_path --strip away the https://, since this will be added later
			end if
			--log remote_path
			set keychain_item_name to XMLParser's attribute_value_by_name(theXMLChild, "keychain-item-name")
			--set commit_int to XMLParser's attribute_value_by_name(theXMLChild, "commit-interval-in-minutes") --defualt is 5min
			--set push_int to XMLParser's attribute_value_by_name(theXMLChild, "push-interval-in-minutes") --defualt is 10min
			--set pull_int to XMLParser's attribute_value_by_name(theXMLChild, "pull-interval-in-minutes") --default is 30min
			set interval to XMLParser's attribute_value_by_name(theXMLChild, "interval") --default is 30min
			--set remote_account_name to XMLParser's attribute_value_by_name(theXMLChild, "remote-account-name")
			--TODO: use only 1 interval
			set key_value_pairs to {local_path:local_path, remote_path:remote_path, keychain_item_name:keychain_item_name, interval:interval} --remote_account_name:remote_account_name,commit_int:commit_int, push_int:push_int--TODO: shouldnt the line bellow be sudo acociative list? or does the record style list work as is?, if you dont need to iterate over the values, you may use record
			set the_repo_list to ListModifier's add_list(the_repo_list, key_value_pairs)
		end repeat
		return the_repo_list
	end compile_repo_list
	(*
 	 * Returns xml data, for the debug mode
	 * NOTE: the purpose of this method is to make compiling the .app easier, with this method you can insert some working repos into the repo.xml file inside the GitSync.app
 	 *)
	on repo_xml()
		set the_repo_xml to "<repositories>" & return --beginning
		set the_repo_xml to the_repo_xml & tab & "<repository local-path=\"~/_projects/_code/_active/applescript/GitSync\" remote-path=\"https://github.com/eonist/GitSync.git\" interval=\"1\" keychain-item-name=\"github\"/>" & return
		set the_repo_xml to the_repo_xml & tab & "<repository local-path=\"~/_projects/_code/_active/applescript/SqliteEdit/repo\" remote-path=\"github.com/eonist/SqliteEdit.git\" interval=\"1\" keychain-item-name=\"github\"/>" & return
		set the_repo_xml to the_repo_xml & tab & "<repository local-path=\"~/Library/Scripts\" remote-path=\"github.com/eonist/applescripts.git\" interval=\"1\" keychain-item-name=\"github\"/>" & return
		set the_repo_xml to the_repo_xml & tab & "<repository local-path=\"~/Documents/wiki/GitSync.wiki\" remote-path=\"github.com/eonist/GitSync.wiki\" interval=\"1\" keychain-item-name=\"github\"/>" & return
		set the_repo_xml to the_repo_xml & "</repositories>" --end
		return the_repo_xml
	end repo_xml
end script
--Utility methods for merging branches
script MergeUtil
	(*
 	 * Manual merge
 	 * NOTE: tries to merge a remote branch into a local branch
 	 * NOTE: prompts the users if a merge conflicts occure
 	 * TODO: we should use two branch params here since its entirly possible to merge from a different remote branch
 	 *)
	on manual_merge(local_path, remote_path, branch)
		--log "manual_merge"
		log ("MergeUtil's manual_merge()")
		if (GitAsserter's has_unmerged_paths(local_path)) then --Asserts if there are unmerged paths that needs resolvment
			log tab & "has unmerged paths to resolve"
			my MergeUtil's resolve_merge_conflicts(local_path, branch, GitParser's unmerged_files(local_path)) --Asserts if there are unmerged paths that needs resolvment
		end if
		do_commit(local_path) --its best practice to always commit any uncommited files before you attempt to pull. 
		try
			--log "try"
			GitUtil's manual_pull(local_path, remote_path, branch) --manual clone down files
		on error errMsg --merge conflicts
			log tab & "error: " & errMsg
			set unmerged_files to GitParser's unmerged_files(local_path) --compile a list of conflicting files somehow
			--log unmerged_files
			resolve_merge_conflicts(local_path, branch, unmerged_files) --promt user, merge conflicts occured, resolve by a list of options, title: conflict in file text.txt: use local, use remote, use a mix (opens it up in textedit), use all local, use all remote, use all mix 
			do_commit(local_path) --add,commit if any files has an altered status
		end try
	end manual_merge
	(*
 	 * Promts the user with a list of options to aid in resolving merge conflicts
 	 * @param branch: the branch you tried to merge into
 	 *)
	on resolve_merge_conflicts(local_repo_path, branch, unmerged_files)
		--log "resolve_merge_conflicts()"
		log ("MergeUtil's resolve_merge_conflicts()")
		repeat with unmerged_file in unmerged_files
			set last_selected_action to first item in options --you may want to make this a "property" to store the last item more permenantly
			set the_action to choose from list options with title "Resolve merge conflict in:" with prompt unmerged_file & ":" default items {last_selected_action} cancel button name "Exit" --promt user with list of options, title: Merge conflict in: unmerged_file
			handle_merge_conflict_dialog(the_action, unmerged_file, local_repo_path, branch, unmerged_files)
		end repeat
	end resolve_merge_conflicts
	(*
 	 * Handles the choice made in the merge conflict dialog
 	 * TODO: test the open file clauses
 	 *)
	on handle_merge_conflict_dialog(the_action, unmerged_file, local_repo_path, branch, unmerged_files)
		--log "handle_merge_conflict_dialog()"
		log ("MergeUtil's handle_merge_conflict_dialog(): " & (item 1 of the_action))
		if the_action is false then --exit
			--error number -128 -- User canceled
			--TODO: do the git merge --abort here to revert to the state you were in before the merge attempt, you may also want to display a dialog to informnthe user in which state the files are now.
		else
			set selected_item to item 1 of the_action
			set last_selected_action to selected_item
			if selected_item is item 1 of options then --keep local version
				GitModifier's check_out(local_repo_path, "--ours", unmerged_file)
			else if selected_item is item 2 of options then --keep remote version
				GitModifier's check_out(local_repo_path, "--theirs", unmerged_file)
			else if selected_item is item 3 of options then --keep mix of both versions
				GitModifier's check_out(local_repo_path, branch, unmerged_file)
			else if selected_item is item 4 of options then --open local version
				GitModifier's check_out(local_repo_path, "--ours", unmerged_file)
				FileUtil's open_file(local_repo_path & unmerged_file)
			else if selected_item is item 5 of options then --open remote version
				GitModifier's check_out(local_repo_path, "--theirs", unmerged_file)
				FileUtil's open_file(local_repo_path & unmerged_file)
			else if selected_item is item 6 of options then --open mix of both versions
				GitModifier's check_out(local_repo_path, branch, unmerged_file)
				FileUtil's open_file(local_repo_path & unmerged_file)
			else if selected_item is item 7 of options then --keep all local versions
				GitModifier's check_out(local_repo_path, "--ours", "*")
			else if selected_item is item 8 of options then --keep all remote versions
				GitModifier's check_out(local_repo_path, "--theirs", "*")
			else if selected_item is item 9 of options then --keep all local and remote versions
				GitModifier's check_out(local_repo_path, branch, "*")
			else if selected_item is item 10 of options then --open all local versions
				GitModifier's check_out(local_repo_path, "--ours", "*")
				FileUtil's open_files(FileParser's full_hsf_paths(local_repo_path, unmerged_files))
			else if selected_item is item 11 of options then --open all remote versions
				GitModifier's check_out(local_repo_path, "--theirs", "*")
				FileUtil's open_files(FileParser's full_hsf_paths(local_repo_path, unmerged_files))
			else if selected_item is item 12 of options then --open all mixed versions
				GitModifier's check_out(local_repo_path, branch, "*")
				FileUtil's open_files(FileParser's full_hsf_paths(local_repo_path, unmerged_files))
			end if
		end if
	end handle_merge_conflict_dialog
end script