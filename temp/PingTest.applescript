property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property ShellUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "shell:ShellUtil.applescript"))

--ShellUtil's has_internet_connection()
ShellUtil's wait_for_internet()