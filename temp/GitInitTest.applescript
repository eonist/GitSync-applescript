
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property FileAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileAsserter.applescript"))
property GitUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitUtil.applescript"))
property GitAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "git:GitAsserter.applescript"))

set the_local_path to "~/testing/"
set the_remote_path to "https://github.com/eonist/testing.git"
--Todo: continue resear cloning into an existing path

if FileAsserter's does_path_exist(the_local_path) then

else--If the path does not exist then
  --Create the local folder with FileModifier
  FileModifier's create_folder()
end if

if GitAsserter's is_git_repo(the_local_path) then
  --figure out how to assert if a remote repo is attached or not
  if then

  end if
else--does not have .git folder
  GitUtil's init(the_local_path)
  attach_remote_repo(the_local_path,remote_repo_path)
end if

--GitUtil's init(the_path)
--do shell script "cd " & the_path & ";" &"rm -rf fox"