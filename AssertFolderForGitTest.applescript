
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property FileAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileAsserter.applescript"))


test()
on test()
  set the_path to (((path to desktop) & "test") as text)
  try
    the_path as alias
    --return true
  on error
    --log "falses"
    return false
  end try
end test
--return FileAsserter's is_folder(the_path)
(*
 * Asserts if a folder is a git repository
 * Example: is_git_repo("~/testing/.git/")--true/false
 *)
on is_git_repo(posix_file_path)
  try
		do shell script "cd " & posix_file_path
    return true
	on error errMsg
    return false
	end try
end is_git_repo
