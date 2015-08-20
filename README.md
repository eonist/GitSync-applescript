##Features:
- Syncs your files in the background while you code. 
- Works with both GitHub and Bitbucket. 
- Creates commit messages on the fly, based on the file change.

##How to install:
1. Install [Git](http://git-scm.com/download/mac) 
2. Run [GitSync](https://github.com/eonist/GitSync/releases/download/0.9.1/GitSync.app.zip) 
3. Enter "local-path", "remote-path", "keychain-name" into repositories.xml  
4. Read [FAQ](https://github.com/eonist/GitSync/wiki/Frequently-Asked-Questions)

###Todo's:
- [x] Move repositories.xml into the app
- [x] The export of xml data to repositories.xml
- [x] The setup wizard
- [x] Rename project to GitSync?
- [x] Clean up the comments in the "setup wizard"
- [x] Use GitSync as a single point of pushing updates to GitHub, pull down in another app
- [x] Retrieve the remote account name from keychain with shell and RegExp capture groups
- [x] Beta test it with live coding
- [x] Test .gitignore with the app
- [x] Create more internal scripts in the GitSync.applescript file. Better naming
- [x] Use Regular expression when deriving the git status message
- [x] Test if you are prompted for a password when requesting from a new keychain
- [x] Stress-test when GitSync gets into trouble
- [x] Research git ignore and how it works
- [x] Use a fixed interval if no interval is provided in the repositories.xml file
- [x] Find a suitable download provider for a zip file, bitbucket? google this
- [x] Use wiki for FAQ
- [x] Draw another OS X GUI sketch and add it [here](https://github.com/eonist/GitSync/issues/16)
- [ ] **Account for keychain passwords with special chars. They may be in hex format.** [here](https://github.com/eonist/GitSync/issues/18)
- [ ] **Self awareness when in debugging / production**
- [ ] **Implement the commit msg description, you drew up:** [here](https://github.com/eonist/GitSync/issues/10)
- [ ] **The GitHub.app should a self contained a repo.xml**
- [ ] **Toggle repo.xml path depending on debug/deploy mode**
- [ ] **Create a LogEngine script that logs what GitSync has been up to log.txt**
- [ ] Add a readme.txt inside the release binary file, how to install etc [here](https://github.com/eonist/GitSync/issues/21)
- [ ] Add a section to README.md: "Whats new in version 1.2" with "New" "Note" "Fixed" 
- [ ] Optional custom commit and push intervals
- [ ] Test project with a fresh git install, what about the shell stuff git writes about in readme.txt?
- [ ] Skip synchronising if the remote is ahead more info [here](https://github.com/eonist/GitSync/issues/17)
- [ ] Research if you can change an applescript icon with an applescript
- [ ] Test with bitbucket private repo [here](https://github.com/eonist/GitSync/issues/20)
- [ ] Shorten the FAQ list
- [ ] Create the GitEdit.app with one function; "Sync down all"
- [ ] Add support for ssh authentication
- [ ] Support urls with https:// prepended to the url and with out, use regexp to assert and prepend if needed
- [ ] Create a pro and con list for GitSync [here](https://github.com/eonist/GitSync/issues/19)
- [ ] **Bonus:** Complete the KeychainParser and KeychainModifier classes
- [ ] **Bonus:** Create an UML activity diagram, And UML class diagram
- [ ] **Bonus:** Install git on server, and use it as origin instead of Github for private projects
