property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property GitParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitParser.applescript"))
log "hello world"
do shell script("echo hello world 2;")