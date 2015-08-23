 has_git_repo("~/test/.git/")
  (*
   * Asserts if a folder has a git repository
   * Example: is_git_repo("~/test/.git/")--true/false
   * Note: Asserts 3 states: folder doesnt exist, folder does not have a git repository, folder exists and has a git repository attatched, only returns true for the last case
   *)
  on is_git_repo(posix_file_path)
    if FileAsserter's does_path_exist(posix_file_path) then
      try
    		GitUtil's status(posix_file_path, "")
    		return true
    	on error
    		return false
    	end try
    else
      return false
    end if
  end is_git_repo
