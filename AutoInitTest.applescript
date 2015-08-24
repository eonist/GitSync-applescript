if(the path exist)
  if(the folder is empty)
    git clone remote_url local_dir
  else--folder is not empty, files already exist
    if (folder has .git folder)
      if(does have remote repo attached)
        if(git status length is 0)--nothing new to upload to remote
          --do nothing
        else--has new files to upload to remote

        end if
        if () 
          -- statements
        end if
       --determine what to do next, download or upload or both. conflicts? solve this
     else--does not have remote repo attached
        attach remote repo
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