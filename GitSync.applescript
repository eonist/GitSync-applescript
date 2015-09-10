--Scripts:
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property TextParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "text:TextParser.applescript"))
property ListModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListModifier.applescript"))
property GitUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitUtil.applescript"))
property XMLParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLParser.applescript"))
property ShellUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "shell:ShellUtil.applescript"))
property KeychainParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "shell:KeychainParser.applescript"))
property FileParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileParser.applescript"))
property FileModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileModifier.applescript"))
property FileAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileAsserter.applescript"))
property RegExpUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "regexp:RegExpUtil.applescript"))

--Properties:
property current_time : 0 --keeps track of the time passed, remember to reset this value pn every init
property the_interval : 60 --static value, increases the time by this value on every interval--TODO: rename to "frequncy"
property repo_list : null --Stores all values the in repositories.xml, remember to reset this value pn every init
property repo_file_path : ""

log "beginning of the script"
set current_time to 0 --always reset this value on init, applescript has persistent values
initialize()
(*
 * Initialize the app, toggles between debug and deploy mode depending fromwhich file type it is run from
 *)
on initialize()
	if (FileParser's file_name(path to me) = "GitSync.applescript") then --debug mode
		set repo_file_path to FileParser's hfs_parent_path(path to me) & "repo.xml"
		log repo_file_path
		handle_interval()
	else --deploy mode
		set repo_file_path to ((path to me) & "Contents" & ":" & "Resources" & ":" & "repo.xml") as text
		if (FileAsserter's does_file_exist(repo_file_path) = false) then
			set the_repo_xml to RepoUtil's repo_xml()
			FileModifier's write_data(the_repo_xml, repo_file_path, false) --create the repo.xml file inside the GitSync.app
		end if --else do nothing, the repo.xml already exists
	end if
end initialize

(*
 * This will be called on init and then every 60 seconds or the time you specifiy in the return value
 * NOTE: this will only be called from an .app mode aka "deploy mode" / "production mode"
 *)
on idle {}
	handle_interval()
	return the_interval --the_interval --return new idle time in seconds
end idle
(*
 * Handles the process of comitting, pushing for multiple repositories
 * This is called on every interval
 * NOTE: while testing you can call this manually, since idle will only work when you run it from an .app
 *)
on handle_interval()
	log "handle_interval()"
	set repo_list to my RepoUtil's compile_repo_list(repo_file_path) --try to avoid calling this on every intervall, its nice to be able to update on the fly, be carefull though
	set current_time_in_min to (current_time / 60) --divide the seconds by 60 seconds to get minutes
	log "current_time_in_min: " & current_time_in_min
	repeat with repo_item in repo_list --iterate over every repo item
		if (current_time_in_min mod (interval of repo_item) = 0) then handle_commit_interval(repo_item) --is true every time spesified by the user
		if (current_time_in_min mod (interval of repo_item) = 0) then handle_push_interval(repo_item) --is true every time spesified by the user
	end repeat
	set current_time to current_time + the_interval --increment the interval (in seconds)
	
end handle_interval
(*
 * Handles the process of making a commit for a single repository
 *)
on handle_commit_interval(repo_item)
	log "handle_commit_interval() a repo with remote path: " & remote_path of repo_item & " local path: " & local_path of repo_item
	log do_commit(local_path of repo_item) --if there were no commits false will be returned
	--log "has_commited: " & has_commited
end handle_commit_interval
(*
 * Handles the process of making a push for a single repository
 *)
on handle_push_interval(repo_item)
	--TODO: use GitAsserter's is_local_branch_ahead instead of the bellow code
	log GitUtil's git_remote_update(local_path of repo_item) --in order for the cherry to work with "git add" that uses https, we need to call this method
	set cherry_result to GitUtil's cherry(local_path of repo_item, "", "")
	log "cherry_result: " & cherry_result
	set has_commits to length of cherry_result > 0
	if (has_commits) then --only push if there are commits to be pushed, hence the has_commited flag, we check if there are commits to be pushed, so we dont uneccacerly push if there are no local commits to be pushed, we may set the commit interval and push interval differently so commits may stack up until its ready to be pushed, read more about this in the projects own FAQ
		set the_keychain_item_name to keychain_item_name of repo_item
		log "the_keychain_item_name: " & the_keychain_item_name
		set keychain_data to KeychainParser's keychain_data(keychain_item_name of repo_item)
		set keychain_password to the_password of keychain_data
		log "keychain_password: " & keychain_password
		set remote_account_name to account_name of keychain_data
		log "remote_account_name: " & remote_account_name
		log "PUSH() a repo with remote path: " & remote_path of repo_item
		set push_call_back to GitUtil's push(local_path of repo_item, remote_path of repo_item, remote_account_name, keychain_password)
		log "push_call_back: " & push_call_back
	end if
end handle_push_interval
(*
 * This method generates a git status list,and asserts if a commit is due, and if so, compiles a commit message and then tries to commit
 * Returns true if a commit was made, false if no commit was made or an error occured
 * NOTE: checks git staus, then adds changes to the index, then compiles a commit message, then commits the changes, and is now ready for a push
 * NOTE: only commits if there is something to commit
 * TODO: add branch parameter to this call
 * NOTE: this a purly local method, does not need to communicate with remote servers etc
 *)
on do_commit(local_repo_path)
	set status_list to my StatusUtil's generate_status_list(local_repo_path) --get current status
	if (length of status_list = 0) then return false --break the flow since there is nothing to commit or process
	my StatusUtil's process_status_list(local_repo_path, status_list) --process current status by adding files, now the status has changed, some files may have disapared, some files now have status as renamed that prev was set for adding and del
	set status_list to my StatusUtil's generate_status_list(local_repo_path) --get the new status, so that we can create a more descriptiv commit message, since the unstaged files are now in a different state
	set commit_msg_title to my CommitUtil's sequence_commit_msg(status_list) --sequence commit msg title for the commit
	log "commit_msg_title: " & commit_msg_title
	set commit_msg_desc to my DescUtil's sequence_description(status_list) --sequence commit msg description for the commit
	log "commit_msg_desc: " & commit_msg_desc
	try --try to make a git commit
		set commit_result to GitUtil's commit(local_repo_path, commit_msg_title, commit_msg_desc) --commit
		log "commit_result: " & commit_result
	on error errMsg
		log "----------------ERROR:-----------------" & errMsg
	end try
	return true --return true to indicate that the commit completed
end do_commit
log "end of the script"
(*
 * A collection of utility methods for parsing the the "git status message" and a method for processing
 *)
script CommitUtil
	(*
	 * Returns a a text "commit message" derived from @param status_list
	 * @param status_list: a list with records that contain staus type, file name and state
	 * NOTE: C,I,R seems to never be triggered, COPIED,IGNORED,REMOVED,
	 * NOTE: In place of Renamed, Git first deletes the file then says its untracked
    *)
	on sequence_commit_msg(status_list) --rename to generate_commit_msg
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
	end sequence_commit_msg
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
		set the_status to GitUtil's status(local_repo_path, "-s") -- the -s stands for short message, and returns a short version of the status message, the short stauslist is used because it is easier to parse than the long status list
		log "the_status: " & the_status
		set the_status_list to TextParser's every_paragraph(the_status) --store each line as items in a list
		set transformed_list to {}
		if (length of the_status_list = 0) then
			log "nothing to commit, working directory clean" --this is the status msg if there has happened nothing new since last, but also if you have commits that are ready for push to origin
		else
			set transformed_list to my transform_status_list(the_status_list)
		end if
		--
		log "len of the_status_list: " & (length of the_status_list)
		log transformed_list
		return transformed_list
	end generate_status_list
	(*
 	 * Transforms the "compact git status list" by adding more context to each item (a list with acociative lists, aka records)
 	 * Returns a list with records that contain staus type, file name and state
 	 * NOTE: the short status msg format is like: "M" " M", "A", " A", "R", " R" etc
 	 * NOTE: the space infront of the capetalized char indicates Changes not staged for commit:
 	 * NOTE: Returns = renamed M = modified, A = addedto index, D = deleted, ?? = untracked file
	 * NOTE: the state can be:  "Changes not staged for commit" , "Untracked files" , "Changes to be committed"
	 * @Param: the_status_list is a list with status messages like: {"?? test.txt"," M index.html","A home.html"}
 	 *)
	on transform_status_list(the_status_list)
		set transformed_list to {}
		repeat with the_status_item in the_status_list
			log "the_status_item: " & the_status_item
			set the_status_parts to RegExpUtil's match(the_status_item, "^( )*([MARD?]{1,2}) (.+)$") --returns 3 capturing groups
			log "length of the_status_parts: " & (length of the_status_parts)
			log the_status_parts
			if ((second item in the_status_parts) = " ") then
				set cmd to third item in the_status_parts --Changes not staged for commit:
				set state to "Changes not staged for commit"
			else -- Changes to be committed
				set cmd to third item in the_status_parts --rename cmd to type
				if (cmd = "??") then
					set state to "Untracked files"
				else
					set state to "Changes to be committed"
				end if
			end if
			set file_name to the fourth item in the_status_parts
			log "state: " & state & ", cmd: " & cmd & ", file_name: " & file_name --logs the file named added changed etc
			set status_item to {state:state, cmd:cmd, file_name:file_name} --store the individual parts in an accociative
			set transformed_list to ListModifier's add_list(transformed_list, status_item) --add a record to a list
		end repeat
		return transformed_list
	end transform_status_list
	(*
	 * Iterates over the status items and "git add" the item unless it's already added (aka "staged for commit")
	 * NOTE: if the status list is empty then there is nothing to process
	 * NOTE: even if a file is removed, its status needs to be added to the next commit
	 *)
	on process_status_list(local_repo_path, status_list)
		log "process_status_list()"
		repeat with status_item in status_list
			--log "len of status_item: " & (length of status_item)
			set state to state of status_item
			set cmd to cmd of status_item
			set file_name to file_name of status_item
			if state = "Untracked files" then --this is when there exists a new file
				log "1. " & file_name
				GitUtil's add(local_repo_path, file_name) --add the file to the next commit
			else if state = "Changes not staged for commit" then --this is when you have not added a file that has changed to the next commit
				log "2. " & file_name
				GitUtil's add(local_repo_path, file_name) --add the file to the next commit
			else if state = "Changes to be committed" then --this is when you have added a file to the next commit, but not commited it
				log "3. " --do nothing here
			end if
		end repeat
	end process_status_list
end script
(*
 * A collection of utility methods for parsing the repository.xml file
 *)
script RepoUtil
	(*
 	 * Returns a repo_list with values derived from an XML file
 	 * @param file_path is in HSF not POSIX
 	 * TODO: if the interval values is not set, then use default values
 	 *)
	on compile_repo_list(file_path) -- rename to generate_repo_list?
		log "file_path: " & file_path
		set theXMLRoot to XMLParser's root(file_path)
		set num_children to length of XMLParser's every_element(theXMLRoot) --number of xml children in xml root element
		set the_repo_list to {}
		repeat with i from 1 to num_children
			set theXMLChild to XMLParser's element_at(theXMLRoot, i)
			set local_path to XMLParser's attribute_value_by_name(theXMLChild, "local-path") --this is the path to the local repository (we need to be in this path to execute git commands on this repo)
			set remote_path to XMLParser's attribute_value_by_name(theXMLChild, "remote-path")
			set is_full_url to RegExpUtil's has_match(remote_path, "^https://.+$") --support for partial and full url
			if is_full_url = true then
				set remote_path to text 9 thru (length of remote_path) of remote_path --strip away the https://, since this will be added later
			end if
			log remote_path
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
 	 *)
	on repo_xml()
		set the_repo_xml to "<repositories>" & return --beginning
		set the_repo_xml to the_repo_xml & tab & "<repository local-path=\"~/_projects/_code/_active/applescript/GitSync\" remote-path=\"https://github.com/eonist/GitSync.git\" interval=\"1\" keychain-item-name=\"github\"/>" & return
		set the_repo_xml to the_repo_xml & tab & "<repository local-path=\"~/_projects/_code/_active/applescript/SqliteEdit/repo\" remote-path=\"github.com/eonist/SqliteEdit.git\" interval=\"1\" keychain-item-name=\"github\"/>" & return
		set the_repo_xml to the_repo_xml & tab & "<repository local-path=\"~/Library/Scripts\" remote-path=\"github.com/eonist/applescripts.git\" interval=\"1\" keychain-item-name=\"github\"/>" & return
		set the_repo_xml to the_repo_xml & "</repositories>" --end
		return the_repo_xml
	end repo_xml
end script