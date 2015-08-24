if(the path exist)
  if(the folder is empty)
    git clone remote_url local_dir
  else--folder is not empty, files already exist
    if (folder has .git folder)
       --
    else--does not have remote repo attached
      attach remote repo
    end if
    GitUtil's manual_clone(remote_url,local_path)
  end if
else
  --
end if
--OR the the path exists and the folder is empty


      attach remote repo
   does have remote repo attached
      determine what to do next, download or upload or both. conflicts? solve this
does not have .git folder
   use git init
   attach remote git to local gi
