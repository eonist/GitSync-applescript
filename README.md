##Features:
- Automates common Git tasks such as **commit**, **push** and **pull** on a repeating interval
- Written in .applescript for 100% transparency, all code is open source

##How to install:
- Download and install [Git](http://git-scm.com/download/mac) 
- Download and open [GitSync](https://github.com/eonist/GitSync/archive/master.zip) 

##FAQ:
**Q: Where does GitSync store passwords?** <br/>
A: GitSync does not store passwords, GitSync requests passwords from keychain

**Q: How can I trust GitSync with my password?** <br/>
A: You can always compile the .app yourself. Download the GitSync from the link provided above, open the GitSync.applescript file in Applescript edit, then inspect the code and it's dependencies. Then export the script as an .app

**Q: Do I need to close the app when I do git work in other apps?** <br/>
A: Yes, its advisable to avoid git conflicts.

**Q: Do I need to close the app down if I changed the repositories.xml file?** <br/>
A: Yes, all changes to the repositories.xml file take effect at the opening of the app. 

**Q: Is the application heavy on the systems cpu?** <br/>
A: You should be fine with a reasonable amount of repos and reasonably sized repos. The app does not parse through each repo and each file for changes, but instead rely on GIT's own "git status" call to figure out if a change has taken place.

**Q: Can the application auto start after reboots?** <br/>
A: Yes, right click on the icon in the dock and hit start app on startup.

**Q: What if there are conflicts while GitSync tries to commit, push or pull?** <br/>
A: GitSync takes a non-destructive approach when conflicts occur. If GitSync stumbles upon a conflict GitSync will try again in the next interval until the user shuts GitSync down and resolves the issue via terminal, or the Github app etc. then open GitSync again and it will continue operations as usual.

**Q: What was the motivation behind building GitSync?** <br/>
A: I use [Textastic](http://www.textasticapp.com) a lot on my IPhone and IPad. Textastic can edit code you have stored on an ftp server, but it doesn't support GitHub. So the process of synchronising to GitHub gets in the way of having fun coding. So voila GitSync saw the light of day. 

###Todo's:
- [x] Move repositories.xml into the app
- [x] The export of xml data to repositories.xml
- [x] The setup wizard
- [x] Rename project to GitSync?
- [ ] Clean up the comments in the "setup wizard"
- [ ] Implement the Setup wizard into the GitSync.applescript file
- [ ] In the wizard, implement a failsafe when the user enters the wrong type of data
- [ ] Retrieve the remote account name from keychain
- [ ] Implement the commands: i and c
- [ ] The separation of Title and Description in a Commit msg
- [ ] Stress-test when GitSync gets into trouble
- [ ] Test if you are prompted for a password when requesting from a new keychain
- [ ] Add support for ssh authentication
- [ ] Research git ignore
- [ ] Maybe just have 1 interval instead of 3? , just a single Sync interval?
- [ ] Do research around what happens if a file changes before a commit is pushed, or before a commit for that matter
- [ ] Test project with a fresh git install, do we need to setup the shell stuff?
- [ ] **Bonus:** Instal git on server, and use it as origin instead of Github for private projects
- [ ] **Bonus:** Humanise commit messages
