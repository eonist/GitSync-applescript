property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property TextParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "text:TextParser.applescript"))
property ListModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListModifier.applescript"))
property GitUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitUtil.applescript"))
property XMLParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLParser.applescript"))
property ShellUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "shell:ShellUtil.applescript"))
property FileParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileParser.applescript"))

property current_time : 0 --keeps track of the time passed, remember to reset this value pn every init
property the_interval : 60 --static value, increases the time by this value on every interval
property repo_list : null --Stores all values the in repositories.xml, remember to reset this value pn every init

log "beginning of the script"

--security find-generic-password -a John -g

log (do shell script "2>&1 security find-generic-password -a John -g") --outputs pass and login credentials

set current_time to 0 --always reset this value on init

--set repo_list to Util's compile_repo_list(FileParser's hfs_parent_path(path to me) & "repositories.xml") --try to avoid calling this on every intervall
--handle_interval() --move this out of this method when debuggin


(*
 * This will be called on init and then every 60 seconds or the time you specifiy in the return value
 *)
on idle {}
	log "idle()"
	--
	(*
	
	*)
	--
	return the_interval --the_interval --return new idle time in seconds
end idle
(*
 * Handles the process of comitting, pushing for multiple repositories
 * Note: while testing you can call this manually, since idle will only work when you run it from an .app
 *)
on handle_interval()
	log "handle_interval()"
	set current_time_in_min to (current_time / 60) --divide the seconds by 60 seconds to get minutes
	log "current_time_in_min: " & current_time_in_min
	repeat with repo_item in repo_list --iterate over every repo item
		if (current_time_in_min mod (commit_int of repo_item) = 0) then handle_commit_interval(repo_item) --is true every time spesified by the user
		if (current_time_in_min mod (push_int of repo_item) = 0) then handle_push_interval(repo_item) --is true every time spesified by the user
		--if (current_time_in_min mod (pull_int of repo_item) = 0) then handle_pull_interval(repo_item) --is true every time spesified by the user
	end repeat
	set current_time to current_time + the_interval --increment the interval (in seconds)
end handle_interval
(*
 * Handles the process of making a commit for a single repository
 *)
on handle_commit_interval(repo_item)
	log "COMMIT() a repo with remote path: " & remote_path of repo_item
	log do_commit(local_path of repo_item) --if there were no commits false will be returned
	--log "has_commited: " & has_commited
end handle_commit_interval
(*
 * Handles the process of making a push for a single repository 
 *)
on handle_push_interval(repo_item)
	set has_commits to length of GitUtil's cherry(local_path of repo_item, remote_account_name of repo_item, ShellUtil's keychain_password(keychain_item_name of repo_item)) > 0
	if (has_commits) then --only push if there are commits to be pushed, hence the has_commited flag
		log "PUSH() a repo with remote path: " & remote_path of repo_item
		set push_call_back to GitUtil's push(local_path of repo_item, remote_path of repo_item, remote_account_name of repo_item, ShellUtil's keychain_password(keychain_item_name of repo_item))
		log "push_call_back: " & push_call_back
	end if
end handle_push_interval
(*
 * Handles the process of making a pull for a single repository 
 *)
(*
on handle_pull_interval(repo_item)
	log "PULL() a repo with remote path: " & remote_path of repo_item
	set pull_call_back to GitUtil's pull(local_path of repo_item, remote_path of repo_item, remote_account_name of repo_item, ShellUtil's keychain_password(keychain_item_name of repo_item))
	log "pull_call_back: " & pull_call_back
end handle_pull_interval
*)
(*
 * This method compiles checks if a commit is due, and if so, compiles a commit message and then tries to commit
 * Returns true if a commit was made, false if no commit was made or an error occured
 * Note: checks git staus, then adds changes to the index, then compiles a commit message, then commits the changes, and is now ready for a push
 *)
on do_commit(local_repo_path)
	set status_list to Util's compile_staus_list(local_repo_path) --get current status
	if (length of status_list = 0) then return false --break the flow since there is nothing to commit or process
	Util's process_status_list(status_list) --process current status by adding files, now the status has changed, some files may have disapared, some files now have status as renamed that prev was set for adding and del
	set status_list to Util's compile_staus_list(local_repo_path) --get the new status
	set commit_message to my Util's compile_commit_msg(status_list) --compile commit msg for the commit
	log "commit_message: " & commit_message
	try
		set commit_result to GitUtil's commit(local_repo_path, commit_message) --commit
		log "commit_result: " & commit_result
	on error errMsg
		log "error: " & errMsg
	end try
	return true --return true to indicate that the commit completed
end do_commit

log "end of the script"
(*
 * A collection of utility methods for GitSync
 *)
script Util
	(*
 	* Returns a repo_list with values derived from an XML file
 	* @param file_path is in HSF not POSIX
 	* Todo: if the interval values is not set, then use default values
 	*)
	on compile_repo_list(file_path) -- rename to generate_repo_list?
		log file_path
		set theXMLRoot to XMLParser's root(file_path)
		set num_children to length of XMLParser's every_element(theXMLRoot) --number of xml children in xml root element
		set the_repo_list to {}
		repeat with i from 1 to num_children
			set theXMLChild to XMLParser's element_at(theXMLRoot, i)
			set local_path to XMLParser's attribute_value_by_name(theXMLChild, "local-path") --this is the path to the local repository (we need to be in this path to execute git commands on this repo)
			set remote_path to XMLParser's attribute_value_by_name(theXMLChild, "remote-path")
			set commit_int to XMLParser's attribute_value_by_name(theXMLChild, "commit-interval-in-minutes") --defualt is 5min
			set push_int to XMLParser's attribute_value_by_name(theXMLChild, "push-interval-in-minutes") --defualt is 10min
			--set pull_int to XMLParser's attribute_value_by_name(theXMLChild, "pull-interval-in-minutes") --default is 30min
			set keychain_item_name to XMLParser's attribute_value_by_name(theXMLChild, "keychain-item-name")
			set remote_account_name to XMLParser's attribute_value_by_name(theXMLChild, "remote-account-name")
			--Todo: shouldnt the line bellow be sudo acociative list? or does the record style list work as is?
			set key_value_pairs to {local_path:local_path, remote_path:remote_path, commit_int:commit_int, push_int:push_int, keychain_item_name:keychain_item_name, remote_account_name:remote_account_name}
			set the_repo_list to ListModifier's add_list(the_repo_list, key_value_pairs)
		end repeat
		return the_repo_list
	end compile_repo_list
	(*
	 * Compiles a commit message
	 * @param status_list: a list with records that contain staus type, file name and state
	 * Todo: Implement the commands: i and c
    *)
	on compile_commit_msg(status_list) --rename to generate_commit_msg
		set num_of_new_files to 0
		set num_of_modified_files to 0
		set num_of_deleted_files to 0
		set num_of_renamed_files to 0
		repeat with status_item in status_list
			set cmd to cmd of status_item --Todo: rename to type or status_type
			if (cmd = "M") then
				set num_of_modified_files to num_of_modified_files + 1
			else if (cmd = "D") then
				set num_of_deleted_files to num_of_deleted_files + 1
			else if (cmd = "A") then
				set num_of_new_files to num_of_new_files + 1
			else if (cmd = "R") then
				set num_of_renamed_files to num_of_renamed_files + 1
			else if (cmd = "??") then --untracked files,
				set num_of_new_files to num_of_new_files + 1
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
	end compile_commit_msg
	(*
	 * Returns a descriptive status list of the current git changes
	 * Note: you may use short staus, but you must interpret the message if the state has an empty space infront of it
	 *)
	on compile_status_list(local_repo_path)
		set the_status to GitUtil's status(local_repo_path, "-s") -- the -s stands for short message, and returns a short version of the status message, the short stauslist is used because it is easier to parse than the long status list
		set the_status_list to TextParser's every_paragraph(the_status) --store each line as a list
		set transformed_list to {}
		if (length of the_paragraphs = 0) then
			log "nothing to commit, working directory clean" --this is the status msg if there has happened nothing new since last, but also if you have commits that are ready for push to origin
		else
			set status_list to my transform_status_list(the_status_list)
		end if
		--
		log "len of status_list: " & (length of status_list)
		return status_list
	end compile_status_list
	(*
 	 * Transforms the "compact git status list" by adding more context to each item (a list with acociative lists, aka records)
 	 * Returns a list with records that contain staus type, file name and state
 	 * Note: the short status msg format is like: "M" " M", "A", " A", "R", " R" etc
 	 * Note: the space infront of the capetalized char indicates Changes not staged for commit:
 	 * Note: Returns = renamed M = modified, A = addedto index, D = deleted, ?? = untracked file
 	 *)
	on transform_status_list(the_status_list)
		set transformed_list to {}
		repeat with the_status in the_status_list
			set the_items to TextParser's split(the_status, space)
			if (first item in the_items is not equal to "") then --Changes to be committed
				set cmd to first item in the_items --rename to type
				if (cmd = "??") then
					set state to "Untracked files"
				else
					set state to "Changes to be committed"
				end if
			else
				set cmd to second item in the_items --Changes not staged for commit:
				set state to "Changes not staged for commit"
			end if
			set file_name to the last item in the_items
			log state & ", " & cmd & ", " & file_name --logs the file named added changed etc
			set status_item to {state:state, cmd:cmd, file_name:file_name} --store the individual parts in an accociative 
			set transformed_list to ListModifier's add_list(transformed_list, status_item) --add a record
		end repeat
		return status_list
	end transform_status_list
	(*
	 * This method iterates over the status items and git add's the item unless ots already added (aka staged for commit)
	 * Note: if the status list is empty then there is nothing to process
	 *)
	on process_status_list(local_repo_path, status_list)
		repeat with status_item in status_list
			--log "len of status_item: " & (length of status_item)
			set state to state of status_item
			set cmd to cmd of status_item
			set file_name to file_name of status_item
			if state = "Untracked files" then --this is when there exists a new file
				log "1"
				GitUtil's add(local_repo_path, file_name) --add the file to the next commit
			else if state = "Changes not staged for commit" then --this is when you have not added a file that has changed to the next commit
				log "2"
				GitUtil's add(local_repo_path, file_name) --add the file to the next commit
			else if state = "Changes to be committed" then --this is when you have added a file to the next commit, but not commited it
				log "3"
			end if
		end repeat
	end process_status_list
end script
