property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property GitParser : my ScriptLoader's load(path to scripts folder from user domain, "git:GitParser.applescript")
property TextParser : my ScriptLoader's load(path to scripts folder from user domain, "text:TextParser.applescript")
property TextModifier : my ScriptLoader's load(path to scripts folder from user domain, "text:TextModifier.applescript")
property git_path : "/usr/local/git/bin/" --to execute git commands we need to call the git commands from this path
--log "hello world"

set the_path to "~/_projects/_code/_active/applescript/test tidy"
--set the_path to TextModifier's replace_text(the_path," ","\\ ")
--log the_path
--set the_path to quoted form of the_path
--set new_path to TextParser's encode(the_path)
--log new_path
--set quoted_form to quoted form of the_path
--log the_path
--do shell script("echo "&the_path)
--do shell script("cd " & "echo " & the_path & ";")
--

--original="$(echo $safename | sed s'/_-_/ /g')"
set the_shell_script to "#!/bin/bash 
					cd " & the_path & ";" & git_path & "git status" & " " & ""
--return do shell script the_shell_script
set the_result to do shell script "echo " & quoted form of the_path & " | sed 's/ /\\\\ /g'"
log the_result
--set the_shell_script to "someVar=echo " & the_path & " | sed s'/ /\\ /g'" & " echo $someVar"
--log the_shell_script

--set converted_value to do shell script the_shell_script

--log converted_value
--set temp_var to do shell script (the_shell_script)
--log temp_var
--log the_path
--log (do shell script "cd " & the_shell_script & ";")

--log "the_value: " & the_value
--return do shell script "cd " & the_shell_script & ";" & git_path & "git status" & " " & ""
--log GitParser's status(the_value, "")

--Use echo with sed to replace the space char with backslash and space. Or do more research on google on how to do this, maybe read some shell books in chapters about file name and shell