
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property RegExpUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "regexp:RegExpUtil.applescript"))


--^([\sMAR]+)\s([a-z,\.]+)$

-- m index.html
set the_status_parts to RegExpUtil's match("?? research 2.txt", "^( )*([MARD?]{1,2}) (.+)$")
log the_status_parts