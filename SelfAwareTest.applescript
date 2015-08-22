property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property FileParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileParser.applescript"))

if (FileParser's file_name(path to me) = "SelfAwareTest.applescript2") then log "test"
log FileParser's file_name(path to me)

