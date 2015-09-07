if(the path exist)
  if(the folder is empty)--folder is empty
    git clone remote_url local_dir--git clone with custom file path
  else--folder is not empty, files already exist
    if (folder has .git folder)--folder already contains a .git folder (aka git repo data)
      if(has remote repo attached)--the .git folder already has a remote repo attached
        --promt the user if he wants to use the existing remote origin, this will skip the user needing to input a remote url
        if (use exisiting remote origin)
           --grab the remote origin url somehow
        else 
           --remove remote origin,
           --promt user for remote origin url
           --add new remote origin
        end if
    else--does not have remote repo attached
        --attach remote repo
    end if
    else--has no .git folder, but there are some files like text.txt 
      --init
      --promt user for remote origin url
      --add new remote origin
    end if
    --manual clone down files
    try manual_clone(local_path,remote_path,branch)
        error--merge conflicts
           --promt user, merge conflicts occured, resolve by a list of options, title: conflict in file text.txt: use local, use remote, use a mix (opens it up in textedit), use all local, use all remote, use all mix
           --add,commit,push
        end try
  end if
else--path does not exist
  git clone remote_url local_dir--this will also create the folders if they dont exist, even nested
end if
(*
 * manual clone test
 *)  
on manual_clone(local_path,remote_path,branch)
  --figure out which files to add and commit
  --find and add unstaged files to local branch
  --commit the staged files
  manual_merge(local_path,remote_path,branch)
end manual_clone
(*
 * manual merge test
 *)
on manual_merge(local_path,remote_path,branch)
  --git fetch origin
  --git merge branch origin/branch
end manual_merge