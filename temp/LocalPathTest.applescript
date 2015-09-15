property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property GitParser : my ScriptLoader's load(path to scripts folder from user domain, "git:GitParser.applescript")
property TextParser : my ScriptLoader's load(path to scripts folder from user domain, "text:TextParser.applescript")
--log "hello world"

set the_path to "'~/_projects/_code/_active/applescript/Git Sync'"
--set new_path to TextParser's encode(the_path)
--log new_path
--set quoted_form to quoted form of the_path
--log the_path
--do shell script("echo "&the_path)
--do shell script("cd " & "echo " & the_path & ";")
--GitParser's status("'~/_projects/_code/_active/applescript/Git Sync'","")

--original="$(echo $safename | sed s'/_-_/ /g')"

set the_shell_script to "#!/bin/bash
		someString=" & the_path & "
		echo $someString | sed s'/ /\\ /g'" 
	--log the_shell_script

do shell script "cd " & the_shell_script & ";"


--Use echo with sed to replace the space char with backslash and space. Or do more research on google on how to do this, maybe read some shell books in chapters about file name and shell