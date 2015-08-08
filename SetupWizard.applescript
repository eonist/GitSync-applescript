property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property ListModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListModifier.applescript"))
property FileParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileParser.applescript"))
property FileModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileModifier.applescript"))
property XMLParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLParser.applescript"))
property XMLModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLModifier.applescript"))

property wizard_setup_list : {} --stores repo_setups created in the wizard
property wizard_setup : {} --stores the input from the user

SetupWizard's init_wizard() --this class will be apart of the GitBot.applescript file as an internall class
script SetupWizard
	(*
 	 * Note: The wizard is only available the first time you start the app
 	 * Note: wizard must be started from the idle{} method, to break the flow of the timer
 	 * TODO: maybe reset wizard_list and wizard_setup
 	 * Todo: The path to the git installation is also needed: /usr/local/git/bin/ (can this path be used inplace of ~/ ?)
 	 *)
	on init_wizard()
		set the_title to "Use this wizard to setup your first GitSync project?"
		try
			set the_choice to (display dialog the_title with title "Setup wizard" buttons {"Ok", "Cancel"} default button "Ok")
			log button returned of the_choice
			choose_local_path()
		on error
			log "exit"
			display alert ("GitSync will Run in the background now")
			--continue idle{}
		end try
	end init_wizard
	(*
 	 * Prompt the user with a file browser when choosing the local path 
 	 * Note: Local path: the local path to the repository
 	 * Todo: (~/test/), what does the ~ mean? Do research.
 	 *)
	on choose_local_path()
		set the_title to "Choose the location to your local repository: "
		set file_path to choose folder with prompt the_title
		log file_path
		set hfs_file_path to file_path as text
		set posix_file_path to FileParser's posix_path(hfs_file_path)
		log "posix_file_path: " & posix_file_path
		set wizard_setup to ListModifier's add_list(wizard_setup, {"local-path", "~" & posix_file_path})
		enter_remote_path()
	end choose_local_path
	(*
 	 * Remote path: copy/paste the remote path that you can obtain on Github (github.com/eonist/test.git)
 	 *)
	on enter_remote_path()
		set the_title to "Enter the location to your remote repository:"
		--set the_description to "Replace user and project:"
		set default_answer to "github.com/user/project.git"
		set ret_val to display dialog the_title default answer default_answer with title "Remote path:" buttons {"Ok", "Cancel"} default button "Ok"
		set remote_path to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"remote-path", remote_path})
		enter_commit_interval()
	end enter_remote_path
	(*
 	 * Commit interval in minutes: (30min) (0min disables this functionality, or by omitting the attribute)
 	 *)
	on enter_commit_interval()
		set the_title to "Commit interval in minutes"
		set ret_val to display dialog the_title default answer "5" with title "Commit interval:" buttons {"Ok", "Cancel"} default button "Ok"
		set commit_interval to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"commit-interval", commit_interval})
		enter_push_interval()
	end enter_commit_interval
	(*
 	 * Push interval in minutes (30min)  (0min disables this functionality, or by omitting the attribute)
 	 *)
	on enter_push_interval()
		set the_title to "Push interval in minutes"
		set ret_val to display dialog the_title default answer "10" with title "Push interval:" buttons {"Ok", "Cancel"} default button "Ok"
		set push_interval to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"push-interval", push_interval})
		--enter_pull_interval()
		enter_keychain_item()
	end enter_push_interval
	(*
 	 * Pull interval in minutes (30min)  (0min disables this functionality, or by omitting the attribute)
 	 *)
	(*
	on enter_pull_interval()
		
		set the_title to "Pull interval in minutes"
		set ret_val to display dialog the_title default answer "15" with title "Pull interval:" buttons {"Ok", "Cancel"} default button "Ok"
		set pull_interval to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"pull-interval", pull_interval})
		enter_keychain_item()
		
	end enter_pull_interval
	*)
	(*
 	 * Keychain item name, open the keychain app and add a password item ("Github username")
 	 * Todo: Remote account name (username) (this field needs to be resolved through a keychain request)
	 *)
	on enter_keychain_item()
		set the_title to "Enter the name of the keychain item holding the git username and password"
		set ret_val to display dialog the_title default answer "github key" with title "Keychain name:" buttons {"Ok", "Cancel"} default button "Ok"
		set key_chain_item_name to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"key-chain-item-name", key_chain_item_name})
		log "len of wizard_setup: " & (length of wizard_setup)
		set wizard_setup_list to ListModifier's add_list(wizard_setup_list, wizard_setup) --add the wizard_setup to wizard_setup_list
		log "len of wizard_setup_list: " & (length of wizard_setup_list)
		add_additional_repo()
	end enter_keychain_item
	(*
 	 * Setup an additional repository? (Yes/No)
 	 *)
	on add_additional_repo()
		set command to button returned of (display dialog "Setup an additional repository?" with title "Setup wizard" buttons {"Yes", "No"} default button "Yes")
		log command
		if (command = "Yes") then
			choose_local_path() --start the sequence all over again
		else
			"idle"
			--set flag to never run the wizard again
			
			--write wizard_list to xml, then write xml to repositories.xml located inside the GitSync.app
			set repo_xml_text to compile_repo_xml(wizard_setup_list)
			log repo_xml_text
			--write this xml data to the repositories.xml file
			try
				set file_path to (path to resource "repositories.xml" in bundle (path to me) in directory "xml") as string --as string makes it HFS from HFS Alias
			on error
				set file_path to FileParser's hfs_parent_path(path to me) & "repositories.xml"
			end try
			
			FileModifier's write_data(repo_xml_text, file_path, false) --false equals don't append
			--continue to execute idle{}
		end if
	end add_additional_repo
	(*
 	 * Returns an xml text comprised of the values stored in the repo_setup_list
 	 * @param repo_setup_list is an list that contains sudo acociative lists
 	 *)
	on compile_repo_xml(repo_setup_list)
		set repo_xml_text to XMLModifier's element_beginning("repositories") & return --beginning
		repeat with repo_item in repo_setup_list
			--log (length of repo_item)
			set repo_xml_text to repo_xml_text & tab & XMLModifier's element_with_attribute("repository", "", repo_item) & return
		end repeat
		set repo_xml_text to repo_xml_text & XMLModifier's element_end("repositories") --end
		return repo_xml_text
	end compile_repo_xml
end script
