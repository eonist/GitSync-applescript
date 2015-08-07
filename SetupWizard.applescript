property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property ListModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListModifier.applescript"))
property FileParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileParser.applescript"))
property XMLParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLParser.applescript"))
property XMLModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLModifier.applescript"))

--this class will be apart of the GitBot.applescript file as an internall class
property wizard_setup_list : {} --stores repo_setups created in the wizard
property wizard_setup : {} --stores the input from the user
--Do you want to use a wizard to setup your first automated git project? (Yes, No)
--wizard must be started from the idle{} method, to break the flow of the timer
--the wizard is only available the first time you start the app
SetupWizard's init_wizard()
script SetupWizard
	--maybe reset wizard_list and wizard_setup
	on init_wizard()
		set the_title to "Use a wizard to setup your first GitSync project?"
		set command to button returned of (display dialog the_title with title "Setup wizard" buttons {"Ok", "Cancel"} default button "Ok")
		if (command = "Ok") then
			choose_local_path()
		else
			--continue to execute idle{}
		end if
	end init_wizard
	--1. Local path: the local path to the repository (~/test/), what does the ~ mean? Do research.
	--Prompt the user with a file browser when choosing the local path 
	on choose_local_path()
		set the_title to "Choose the location to your local repository: "
		set file_path to alias choose folder with prompt the_title
		log file_path
		set hfs_file_path to file_path as text
		set posix_file_path to FileParser's posix_path(hfs_file_path)
		log "posix_file_path: " & posix_file_path
		set wizard_setup to ListModifier's add_list(wizard_setup, {"local-path", "~" & posix_file_path})
		enter_remote_path()
	end choose_local_path
	--2. Remote path: copy/paste the remote path that you can obtain on Github (github.com/eonist/test.git)
	on enter_remote_path()
		set the_title to "Enter the location to your remote repository"
		--set the_description to "Replace user and project:"
		set default_answer to "github.com/user/project.git"
		set ret_val to display dialog the_title default answer default_answer with title "Remote path:" buttons {"Ok", "Cancel"} default button "Ok"
		set remote_path to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"remote-path", remote_path})
		enter_commit_interval()
	end enter_remote_path
	--3. Commit interval in minutes: (30min) (0min disables this functionality, or by omitting the attribute)
	on enter_commit_interval()
		set the_title to "Commit interval in minutes"
		set ret_val to display dialog the_title default answer "5" with title "Commit interval:" buttons {"Ok", "Cancel"} default button "Ok"
		set commit_interval to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"commit-interval", commit_interval})
		enter_push_interval()
	end enter_commit_interval
	--4. Push interval in minutes (30min)  (0min disables this functionality, or by omitting the attribute)
	on enter_push_interval()
		set the_title to "Push interval in minutes"
		set ret_val to display dialog the_title default answer "10" with title "Push interval:" buttons {"Ok", "Cancel"} default button "Ok"
		set push_interval to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"push-interval", push_interval})
		enter_pull_interval()
	end enter_push_interval
	--5. Pull interval in minutes (30min)  (0min disables this functionality, or by omitting the attribute)
	on enter_pull_interval()
		
		set the_title to "Pull interval in minutes"
		set ret_val to display dialog the_title default answer "15" with title "Pull interval:" buttons {"Ok", "Cancel"} default button "Ok"
		set pull_interval to text returned of ret_val
		set wizard_setup to ListModifier's add_list(wizard_setup, {"pull-interval", pull_interval})
		enter_keychain_item()
		
	end enter_pull_interval
	--6. Keychain item name, open the keychain app and add a password item ("Github username")
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
	--Setup an additional repository? (Yes/No)
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
			set file_path to (path to resource "repositories.xml" in bundle (path to me) in directory "xml") as string --as string makes it HFS from HFS Alias
			FileModifier's write_data(repo_xml_text, file_path, false) --false equals don't append
			--continue to execute idle{}
			
		end if
		
	end add_additional_repo
	--
	on compile_repo_xml(repo_setup_list)
		set repo_xml_text to XMLModifier's element_beginning("repositories") & return --beginning
		repeat with repo_item in repo_setup_list
			log (length of repo_item)
			set repo_xml_text to repo_xml_text & tab & XMLModifier's element_with_attribute("repository", "", repo_item) & return
		end repeat
		set repo_xml_text to repo_xml_text & XMLModifier's element_end("repositories") --end
		return repo_xml_text
	end compile_repo_xml
end script
(*
Note:
Remote account name (username) (this field needs to be resolved through a keychain request)

Note:
The path to the git installation is also needed: /usr/local/git/bin/ (can this path be used inplace of ~/ ?)

*)


