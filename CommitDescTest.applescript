(*
 * Test
 *)
set rec_1 to {state:"Changes not staged for commit", cmd:"??", file_name:"doc/faq.txt"}
set rec_2 to {state:"Untracked files", cmd:"M", file_name:"doc/readme.txt"}
set rec_3 to {state:"Changes to be committed", cmd:"D", file_name:"doc/faq.txt"}
set status_list to {rec_1, rec_2, rec_3}
set desc_text to ""

set modified_items to {}
set deleted_items to {}
set modified_items to {}
set added_items to {}
repeat with status_item in status_list
	if (cmd of status_item is "D") then set deleted_items to status_item
	if (cmd of status_item is "M") then set modified_items to status_item
	if (cmd of status_item is "??") then set added_items to status_item
end repeat

if (length of deleted_items > 0) then
	set desc_text to desc_text & "Deleted " & length of deleted_items & " files:" & return
	repeat with deleted_item in deleted_items
		log (file_name of deleted_item)
		set desc_text to desc_text & (file_name of deleted_item)
	end repeat
	set desc_text to desc_text & return --add an extra line break at the end "paragraph like"
end if
log "desc_text: " & desc_text
--now do this for the other lists as well