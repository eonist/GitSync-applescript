
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property FileAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileAsserter.applescript"))
property GitUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitUtil.applescript"))
property GitAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitAsserter.applescript"))

set the_path to "~/testing/"

if FileAsserter's does_path_exist(the_path) then

else--If the path does not exist then
  --Create the local folder with FileModifier
  FileModifier's create_folder()
end if

if GitAsserter's is_git_repo(the_path) then

else--does not have .git folder

end if

GitUtil's init(the_path)
--do shell script "cd " & the_path & ";" &"rm -rf fox"
