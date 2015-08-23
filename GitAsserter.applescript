 has_git_repo("~/test/.git/")
 (*
  * Asserts if a folder has a git repository
  * Example: is_git_repo("~/testing/.git/")--true/false
  * Note: You may also assert if the folder exists
  *)
on has_git_repo(posix_file_path)
	try
		return GitUtil's status(posix_file_path, "")
		--do shell script "cd " & posix_file_path
		return true
	on error
		return false
	end try
end has_git_repo
