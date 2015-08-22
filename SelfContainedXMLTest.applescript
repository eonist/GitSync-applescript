property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property FileModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileModifier.applescript"))

set the_path to desktop

tell application "Finder"
	make new file at desktop with properties {name:"text1.txt", creator type:"8BIM", comment:"Hi!"}
end tell