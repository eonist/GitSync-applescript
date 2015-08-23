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
