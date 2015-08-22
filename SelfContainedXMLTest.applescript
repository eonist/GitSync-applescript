property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property FileModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileModifier.applescript"))

set the_path to 
log the_path
log 
FileModifier's write_data("test", (path to desktop & ":text1.txt"), true)