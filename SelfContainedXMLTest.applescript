property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property FileModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileModifier.applescript"))

set the_path to path to desktop
log the_path
log (the_path & ":text1.txt")
FileModifier's write_data("test", the_path & "text.txt", true)