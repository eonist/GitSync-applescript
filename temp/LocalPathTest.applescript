property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property GitParser : my ScriptLoader's load(path to scripts folder from user domain, "git:GitParser.applescript")
property TextParser : my ScriptLoader's load(path to scripts folder from user domain, "text:TextParser.applescript")
property TextModifier : my ScriptLoader's load(path to scripts folder from user domain, "text:TextModifier.applescript")
property git_path : "/usr/local/git/bin/" --to execute git commands we need to call the git commands from this path
--log "hello world"

set the_path to "~/_projects/_code/_active/applescript/test tidy"
--set the_path to TextModifier's replace_text(the_path," ","\\ ")

--log do shell script "echo " & quoted form of the_path & " | sed 's/ /\\\\ /g'"


log GitParser's status(the_path, "")
