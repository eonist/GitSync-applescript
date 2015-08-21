property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property ListModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListModifier.applescript"))
(*
 * Test
 *)
set rec_1 to {state:"Changes not staged for commit", cmd:"??", file_name:"doc/faq.txt"}
set rec_2 to {state:"Untracked files", cmd:"M", file_name:"doc/readme.txt"}
set rec_3 to {state:"Changes to be committed", cmd:"D", file_name:"doc/faq.txt"}
set rec_4 to {state:"Changes to be committed", cmd:"D", file_name:"doc/log.txt"}
set status_list to {rec_1, rec_2, rec_3, rec_4}
set desc_text to ""

set modified_items to {}
set deleted_items to {}
set added_items to {}
repeat with status_item in status_list
	if (cmd of status_item is "D") then set deleted_items to ListModifier's add_list(deleted_items, status_item) --add a record to a list
	if (cmd of status_item is "M") then set modified_items to ListModifier's add_list(modified_items, status_item) --add a record to a list
	if (cmd of status_item is "??") then set added_items to ListModifier's add_list(added_items, status_item) --add a record to a list
end repeat
set desc_text to desc_text & traverse_list(added_items, "Added ")
set desc_text to desc_text & traverse_list(deleted_items, "Deleted ")
set desc_text to desc_text & traverse_list(modified_items, "Modified ")

on traverse_list(the_list, prefix_text)
	set desc_text to ""
	if (length of the_list > 0) then
		set the_suffix to " file"
		if (length of the_list > 1) then set the_suffix to the_suffix & "s" --multiple
		set desc_text to desc_text & prefix_text & length of the_list & the_suffix & ":" & return
		repeat with the_item in the_list
			set desc_text to desc_text & (file_name of the_item) & return
		end repeat
		set desc_text to desc_text & return --add an extra line break at the end "paragraph like"
	end if
	return desc_text
end traverse_list
log desc_text
--now do this for the other lists as well