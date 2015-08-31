if(the path exist)
  if(the folder is empty)--folder is empty
    git clone remote_url local_dir--git clone with custom file path
  else--folder is not empty, files already exist
    if (folder has .git folder)--folder already contains a .git folder (aka git repo data)
      if(has remote repo attached)--the .git folder already has a remote repo attached
        --do a git fetch origin master
        --Todo: test this in terminal, figure out if a file is ahead or behind etc, and what to do acordingly
        --list the local branches
        --do an git merge....
        --hmm
        --checkout the origin, this moves the files into...hmm
        if(git status length is 0)--nothing new to upload to remote (you may need to assert staging area, ealier commits and unstaged items)
          --do nothing
        else--has new files to upload to remote (you may need to assert staging area, ealier commits and unstaged items)
          --then upload them
        end if
        if () 
          -- statements
        end if
       --determine what to do next, download or upload or both. conflicts? solve this
     else--does not have remote repo attached
        --attach remote repo
      end if
    else
      GitUtil's manual_clone(remote_url,local_path)--init,attach remote,fetch,checkout,fetch
    end if
  end if
else--path does not exist
  git clone remote_url local_dir--this will also create the folders if they dont exist, even nested
end if
--OR the the path exists and the folder is empty


      attach remote repo
   does have remote repo attached

does not have .git folder