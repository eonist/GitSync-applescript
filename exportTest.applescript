property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt") --prerequisite for loading .applescript files
property XMLParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLParser.applescript"))
property XMLModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "xml:XMLModifier.applescript"))
property FileParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileParser.applescript"))
property FileModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "file:FileModifier.applescript"))
property ListModifier : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListModifier.applescript"))
--read from internal file
set file_path to (path to resource "repositories.xml" in bundle (path to me) in directory "xml") as string --as string makes it HFS from HFS Alias
--set theXMLRoot to XMLParser's root(file_path)
--set num_children to length of XMLParser's every_element(theXMLRoot) --number of xml children in xml root element

--log num_children
--write to internal file
--FileModifier's write_data("test", file_path, true)

--write xml to interal file
--set some_element to XMLModifier's element("repositories", "text")
--log "some_element: " & some_element

--make some xml methods in the xmlmodifier class
--set repositories to XMLModifier's element_with_attribute("repositories", "", {{key:"color", value:"FF0000"}, {key:"color", value:"FF4400"}})
--log "some_element: " & some_element
--read xml attributes and items

--& tab & tab & caseElementString & return

--set the_xml_text to XMLModifier's element_beginning("repositories") & return --beginning
--set the_xml_text to the_xml_text & tab & XMLModifier's element_with_attribute("repository", "", {{key:"color", value:"FF0000"}, {key:"color", value:"FF4400"}}) & return
--set the_xml_text to the_xml_text & tab & XMLModifier's element_with_attribute("repository", "", {{key:"color", value:"blue"}, {key:"color", value:"orange"}}) & return
--set the_xml_text to the_xml_text & XMLModifier's element_end("repositories") --end

--log the_xml_text

--create repo_setup_list
set repo_setup_list to {}
set repo_setup_1 to {{"local-path", "~/test/"}, {"remote-path", "github.com/eonist/test.git"}, {"commit-interval", "3"}, {"push-interval", "5"}, {"pull-interval", "12"}, {"key-chain-item-name", "github eonist"}}
set repo_setup_list to ListModifier's add_list(repo_setup_list, repo_setup_1)
set repo_setup_2 to {{"local-path", "~/test/"}, {"remote-path", "github.com/eonist/test.git"}, {"commit-interval", "3"}, {"push-interval", "5"}, {"pull-interval", "12"}, {"key-chain-item-name", "github eonist"}}
set repo_setup_list to ListModifier's add_list(repo_setup_list, repo_setup_2)

log (length of repo_setup_list)

--traverse repo_setup_list and store as xml
set repo_xml_text to compile_repo_xml(repo_setup_list)

on compile_repo_xml(repo_setup_list)
	set repo_xml_text to XMLModifier's element_beginning("repositories") & return --beginning
	repeat with repo_item in repo_setup_list
		log (length of repo_item)
		set repo_xml_text to repo_xml_text & tab & XMLModifier's element_with_attribute("repository", "", repo_item) & return
	end repeat
	set repo_xml_text to repo_xml_text & XMLModifier's element_end("repositories") --end
	return repo_xml_text
end compile_repo_xml
--
--log repo_xml_text


--write this xml data to the repositories.xml file

FileModifier's write_data(repo_xml_text, file_path, false) --false equals don't append

--then read this data:

set theXMLRoot to XMLParser's root(file_path)
set num_children to length of XMLParser's every_element(theXMLRoot) --number of xml children in xml root element

--log theXMLRoot as text

--It now works
