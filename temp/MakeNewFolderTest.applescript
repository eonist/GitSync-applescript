
tell application "Finder"
	set newfo to make new folder at (path to desktop) with properties {name:"testing"}
	--make new folder at newfo with properties {name:"Job Materials"}
end tell

log (path to desktop)
