property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property RegExpUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "regexp:RegExpUtil.applescript"))
property TextParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "text:TextParser.applescript"))


--set the_result to RegExpUtil's match("127.0.0.1", "^([[:digit:]]{1,3})\\.([[:digit:]]{1,3})\\.([[:digit:]]{1,3})\\.([[:digit:]]{1,3})$")
--set the_result to RegExpUtil's match("abc 123", "^([a-z]+)[[:space:]]([1-9]+)$") --(*abc 123, abc, 123*)--length of the_result--(*3*)
--log the_result
--log length of the_result



set the_text to "password: \"abc123\"
keychain: \"/Library/Keychains/System.keychain\"
class: \"genp\"
attributes:
    0x00000007"
--set the_text to "abc
--123"





--set the_text_2 to "test
--abc123"
--log the_text_2
--set the_result_2 to RegExpUtil's match(the_text, "^.+$")


keychain_data("flowerpower2")

(*
 * Returns a record with keychain name, account name and password by querrying keychain with the "keychain item name" of the password-keychain-item
 * Note: the_keychain_item_name is the "name" of the keychain-password-item
 * Caution: If there are unusual characters in the password, it isn't output as plain text, it's output encoded in hex. Here's a python script I've been using which covers that case: http://blog.macromates.com/2006/keychain-access-from-shell/
 * Note: appending find-generic-password -a  & account_name &  -g will retrive keychain itm name and pass from account name
 *)
on keychain_data(the_keychain_item_name)
	set pass_result to (do shell script "2>&1 security find-generic-password -gl " & the_keychain_item_name) --outputs pass and login credentials
	--log pass_result
	--log length of pass_result
	
	set wrapped_text to TextParser's wrap_text(pass_result, " ") --wraps the text into one line, replaces linebreaks with a single space char
	--log wrapped_text
	
	set the_result to RegExpUtil's match(wrapped_text, "password\\: \"([a-z0-9]+)\".keychain\\: \"([a-z0-9/.]+)\" class\\: \"genp\" attributes\\:(.+)")
	--log the_result
	--log length of the_result
	
	set the_password to second item in the_result
	--log "Password: " & the_password
	set the_content to fourth item in the_result
	--log the_content
	set account_name_result to RegExpUtil's match(the_content, " \"acct\"\\<blob\\>\\=\"([^\"]+)\"")
	--log account_name_result
	--log length of account_name_result
	--log first item in account_name_result
	set account_name to second item in account_name_result
	--log "account_name:" & account_name
	--svce"<blob>="flowerpower"
	set keychain_item_name_result to RegExpUtil's match(the_content, " \"svce\"\\<blob\\>\\=\"([^\"]+)\"")
	--log keychain_item_name_result
	--log length of keychain_item_name_result
	set keychain_item_name to (second item in keychain_item_name_result) --keychain item name
	--log "keychain_item_name: " & keychain_item_name
	
	return {keychain_item_name:keychain_item_name, account_name:account_name, the_password:the_password}
end keychain_data