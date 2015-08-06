--this class will be apart of the GitBot.applescript file as an internall class
property wizard_list : {}--stores repo_setups created in the wizard
property wizard_setup : {}--stores the input from the user
--Do you want to use a wizard to setup your first automated git project? (Yes, No)
--wizard must be started from the idle{} method, to break the flow of the timer
--the wizard is only available the first time you start the app
on wizard()
	set title to "Do you want to use a wizard to setup your first automated git project?"
	--maybe reset wizard_list and wizard_setup
	--choose_local_path()
	--continue to execute idle{}
end wizard
--1. Local path: the local path to the repository (~/test/), what does the ~ mean? Do research. 
on choose_local_path()
	set title to "Choose the location to your local project"
	set local_path to ""
	wizard_setup = wizard_setup & {local_path:local_path}
end choose_local_path
--2. Remote path: copy/paste the remote path that you can obtain on Github (github.com/eonist/test.git)
on enter_remote_path()
	set title to "Choose the location to your remote project"
	set description to "this url often look like: github.com/user/project.git"
	set remote_path to ""
	wizard_setup = wizard_setup & {remote_path:remote_path}
end enter_remote_path
--3. Commit interval in minutes: (30min) (0min disables this functionality, or by omitting the attribute)
on enter_commit_interval()
	set commit_interval to ""
	set title to "Commit interval in minutes"
	wizard_setup = wizard_setup & {commit_interval:commit_interval}
end enter_commit_interval
--4. Push interval in minutes (30min)  (0min disables this functionality, or by omitting the attribute)
on enter_push_interval()
	set title to "Push interval in minutes"
	set push_interval to ""
	wizard_setup = wizard_setup & {push_interval:push_interval}
end enter_push_interval
--5. Pull interval in minutes (30min)  (0min disables this functionality, or by omitting the attribute)
on enter_pull_interval()
	set title to "Push interval in minutes"
	set pull_interval to ""
	wizard_setup = wizard_setup & {pull_interval:pull_interval}
end enter_pull_interval
--6. Keychain item name, open the keychain app and add a password item ("Github username")
on enter_keychain_item()
	set title to "Enter the name of the keychain item holding the git username and password"
	set user_name to ""
	set password to ""
	wizard_setup = wizard_setup & {user_name:user_name,password:password}
	ListModifier's add_list(wizard_list,wizard_setup)--add the accociative list to the list
end enter_keychain_item
--Setup an additional repository? (Yes/No)
on add_additional_repo()
	--yes
		--choose_local_path()
	--no
		--set flag to never run wizard again
		--write wizard_list to xml, then write xml to repositories.xml located inside the GitBot.app
		--continue to execute idle{}
end add_additional_repo
(*
Note:
Remote account name (username) (this field needs to be resolved through a keychain request)

Note:
The path to the git installation is also needed: /usr/local/git/bin/ (can this path be used inlace of ~/ ?)

Note:
Prompt the user with a file browser when choosing the local path (can we use the posix path?)

Note: 
The setup wizard returns @
*)