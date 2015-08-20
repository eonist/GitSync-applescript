property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property RegExpUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "regexp:RegExpUtil.applescript"))

--set the_text to "Password: 0x0066FF00  \"abc123\""
set the_text to "Password: 0x6162634028292F3132335F262F25242F26242325242226C2A7E2889E7CC2A7E2889E7C  \"abc@()/123_&/%$/&$#%$\""
log RegExpUtil's match(the_text, "Password:[[:space:]](0x[0-9A-F]+)?[[:space:]]*\"(.+)\"")