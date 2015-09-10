(*
 * Automatically creates a local git repo based on the remote repo, if a local repo already exists, it is unharmfully merged into
 * TODO: this method is complete except merge_conflict_file_list needs to be generated somehow
 * @param branch: the branch you want to use as origin branch
 *)
on auto_init(local_path,remote_path,branch)
	set does_path_exist to FileAsserter's does_path_exist(local_path)
	if(does_path_exist)
		set is_folder_empty to length of files in local_path
	  if(is_folder_empty)--folder is empty
	  	 GitUtil's clone(remote_url, local_dir)--git clone with custom file path
	  else--folder is not empty, files already exist
	    set is_git_folder to GitAsserter's is_git_repo(local_path)
	    if (is_git_folder)--folder already contains a .git folder (aka git repo data)
	      set has_remote_repo_attached to GitAsserter's has_remote_repo_attached(local_path,branch)
	      if(has_remote_repo_attached)--the .git folder already has a remote repo attached
	        GitUtil's detach_remote_repo(local_path,branch)--promt the user if he wants to use the existing remote origin, this will skip the user needing to input a remote url
	        GitUtil's attach_remote_repo(local_path,branch)
	    	else--does not have remote repo attached
	        GitUtil's attach_remote_repo(local_path,branch)--attach remote repo
	   	end if
	    else--has no .git folder, but there are some files like text.txt 
	      GitUtil's init(local_path)--init
	      GitUtil's attach_remote_repo(local_path,branch)--add new remote origin
	    end if
	    OnIntervalTest's manual_merge(local_path,remote_path,into_branch,from_branch)--commits, merges with promts
	  end if
	else--path does not exist
	  GitUtil's clone(remote_url, local_dir)--this will also create the folders if they dont exist, even nested
	end if
end auto_init