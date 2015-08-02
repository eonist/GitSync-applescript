property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property TextParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "text:TextParser.applescript"))
property ListModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListModifier.applescript"))
property GitUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitUtil.applescript"))
property XMLParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLParser.applescript"))
property ShellUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "shell:ShellUtil.applescript"))

property current_time : 0
property the_interval : 60 --static value
property repo_list : null --Stores all values in repositories.xml

--// :TODO: we have a problem with hasCommited, we really need the git assert method for this, git checkout maybe ? Try this in terminal first
--Todo: make the commit message more human like: Deleted two files, modified the Utils.php and added index.html,nthis is also to aviid github blocking the app for suspisiouse robo activity, that they dont likevery much
--Todo: Clean up the code, comments
--Todo: RoboGit, GitBot to a public repo, create a small webbsite for it, create a description on how to use it, keep commiting to the project, video?
--// :TODO:  when things go avery, dont halt the flow, simply note it in a log file, and try again in the next interval
log "beginning of script"
(*
 * This will be called on init and then every 30 seconds or the time you specifiy in the return value
 *)
on idle {}
	log "idle()"
	--
	set current_time to 0 --always reset this value on init
	set repo_list to Util's compile_repo_list(((path to desktop) as string) & "repositories.xml") --try to avoid calling this on every intervall
	handle_interval() --move this out of this method when debuggin
	--
	return 60 --the_interval --return new idle time in seconds
end idle
(*
 * Called on every interval, defaultnis every 60 seconds
 * Note: while testing you can call this manually, since idle will only work when you run it from an .app
 * Todo: Do we need login and pass for pulling? - for private repos, yes
 *)
on handle_interval()
	log "handle_interval()"
	set current_time_in_min to (current_time / 60) --divide the seconds by 60 seconds to get minutes
	log "current_time_in_min: " & current_time_in_min
	
	repeat with repo_item in repo_list --iterate over every repo item
		if (current_time_in_min mod (commit_int of repo_item) = 0) then commit_interval(repo_item) --is true on every interval defined in the repo item
		if (current_time_in_min mod (push_int of repo_item) = 0) then push_interval(repo_item)
		if (current_time_in_min mod (pull_int of repo_item) = 0) then pull_interval(repo_item)
	end repeat
	set current_time to current_time + the_interval --increment the interval (in seconds)
end handle_interval
--Commit interval
on commit_interval(repo_item)
	log "COMMIT() a repo with remote path: " & remote_path of repo_item
	log init_commit_process(local_path of repo_item) --if there were no commits false will be returned
	--log "has_commited: " & has_commited
end commit_interval
--Push interval
on push_interval(repo_item)
	set has_commits to length of GitUtil's cherry(local_path of repo_item, remote_account_name of repo_item, ShellUtil's keychain_password(keychain_item_name of repo_item)) > 0
	if (has_commits) then --only push if there are commits to be pushed, hence the has_commited flag
		log "PUSH() a repo with remote path: " & remote_path of repo_item
		set push_call_back to GitUtil's push(local_path of repo_item, remote_path of repo_item, remote_account_name of repo_item, ShellUtil's keychain_password(keychain_item_name of repo_item))
		log "push_call_back: " & push_call_back
	end if
end push_interval
--Pull interval
on pull_interval(repo_item)
	log "PULL() a repo with remote path: " & remote_path of repo_item
	set pull_call_back to GitUtil's pull(local_path of repo_item, remote_path of repo_item, remote_account_name of repo_item, ShellUtil's keychain_password(keychain_item_name of repo_item))
	log "pull_call_back: " & pull_call_back
end pull_interval

(*
 * Initiates the commit process
 * Note: checks git staus, then adds changes to the index, then compiles a commit message, then commits the changes, and is now ready for a push
 * Todo: consider Creating a Title text and a description text for each commit
 *)
on init_commit_process(local_repo_path) --rename to init_commit_process
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
end init_commit_process

log "end of script"
(*
 * A collection of utility methods for GitBot
 *)
script Util
	(*
 	 * Translates the git status message into a list, also adds some context to the status items
 	 * Todo: sequence_status_msg ? Find synonym for this
 	 * Note the short status msg format is like: "M" " M", "A", " A", "R", " R" etc
 	 * Note: the space infront of the capetalized char indicates Changes not staged for commit:
 	 * Note: Returns = renamed M = modified, A = addedto index, D = deleted, ?? = untracked file
 	 *)
	on translate_status_message(the_paragraphs)
		set status_list to {}
		repeat with the_paragraph in the_paragraphs
			--log the_paragraph
			set the_items to TextParser's split(the_paragraph, space)
			--log length of the_items
			--log first item in the_items
			if (first item in the_items is not equal to "") then --Changes to be committed
				set cmd to first item in the_items
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
			set status_item to {state:state, cmd:cmd, file_name:file_name}
			set status_list to ListModifier's add_list(status_list, status_item) --add an accociative list to a list
		end repeat
		--log "tidy_status_list: " & tidy_status_list
		return tidy_status_list
	end translate_status_message
	(*
 	* Returns a repo_list derived from a XML file
 	* @param file_path is in HSF not POSIX
 	* Todo: if the interval values is not set, then use default values
 	*)
	on compile_repo_list(file_path)
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
			set pull_int to XMLParser's attribute_value_by_name(theXMLChild, "pull-interval-in-minutes") --default is 30min
			set keychain_item_name to XMLParser's attribute_value_by_name(theXMLChild, "keychain-item-name")
			set remote_account_name to XMLParser's attribute_value_by_name(theXMLChild, "remote-account-name")
			set key_value_pairs to {local_path:local_path, remote_path:remote_path, commit_int:commit_int, push_int:push_int, pull_int:pull_int, keychain_item_name:keychain_item_name, remote_account_name:remote_account_name}
			set the_repo_list to ListModifier's add_list(the_repo_list, key_value_pairs)
		end repeat
		return the_repo_list
	end compile_repo_list
	(*
    * Compile a commit message
    * Todo: C - Copied in index, is also a state, try to research how to trigger this
	 * Todo: also add i - ignored, try to trigger this
    *)
	on compile_commit_msg(status_list)
		set num_of_new_files to 0
		set num_of_modified_files to 0
		set num_of_deleted_files to 0
		set num_of_renamed_files to 0
		repeat with status_item in status_list
			set cmd to cmd of status_item
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
			if (length of commit_msg > 0) then set commit_msg to commit_msg & ", " --add comma	
			set commit_msg to commit_msg & "Files modified: " & num_of_modified_files
		end if
		if (num_of_deleted_files > 0) then
			if (length of commit_msg > 0) then set commit_msg to commit_msg & ", " --add comma
			set commit_msg to commit_msg & "Files deleted: " & num_of_deleted_files
		end if
		if (num_of_renamed_files > 0) then
			if (length of commit_msg > 0) then set commit_msg to commit_msg & ", " --add comma
			set commit_msg to commit_msg & "Files renamed: " & num_of_renamed_files
		end if
		return commit_msg
	end compile_commit_msg
	(*
	 * Note: -s simplifies the ret msg or you can also use --porcelain which does the same
	 * Note: you may use short staus, but you must interpret the message if the state has an empty space infront of it, see print screen to understand this
	 *)
	on compile_status_list(local_repo_path) --rename to compile_status_list and move to priv class,needs one param, the local path
		set retMSG2 to GitUtil's status(local_repo_path, "-s") --do shell script "cd " & local_repo_path & ";" & git_path & "git status"
		--log "retMSG2: " & retMSG2
		set the_paragraphs to TextParser's every_paragraph(retMSG2)
		--set the_current_status_state to second item in the_paragraphs
		--log "the_current_status_state: " & the_current_status_state
		--log "len: " & length of the_paragraphs
		--if (length of the_paragraphs > 4) then
		--log "item: " & fourth item in the_paragraphs
		--end if
		set status_list to {}
		if (length of the_paragraphs = 0) then
			log "nothing to commit, working directory clean" --this is the status msg if there has happened nothing new since last, but also if you have commits that are ready for push to origin
		else
			set status_list to my Util's translate_status_message(the_paragraphs)
		end if
		--
		log "len of status_list: " & (length of status_list)
		return status_list
	end compile_status_list
	(*
	 * Note: if the status list is empty then ther eis nothing to process
	 * Todo: Move to util class
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