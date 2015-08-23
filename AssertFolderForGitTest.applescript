is_git_repo("test")
on is_git_repo(file_path)
  return do shell script "cd " & " testing" & "/" & ".git/"
end is_git_repofile_path
