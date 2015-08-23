is_git_repo("~/test/.git/")
on is_git_repo(posix_file_path)
  try
		do shell script "cd " & posix_file_path
    return true
	on error errMsg
    return false
	end try
end is_git_repo
