##Features:
- Automates common Git tasks such as **commit**, **push** and **pull** on a repeating interval
- Written in .applescript for 100% transparency, all code is open source

##How to install:
- Download and install [Git](http://git-scm.com/download/mac) then follow the instalation guide
- Download and open [GitBot](https://github.com/eonist/GitBot/archive/master.zip) then follow the setup guide

##FAQ:
**Q: Where does GitBot store passwords?** <br/>
A: GitBot does not store passwords, GitBot requests passwords from keychain

**Q: How can I trust GitBot with my password?** <br/>
A: You can always compile the .app yourself. Download the GitBot from the link provided above, open the GitBot.applescript file in Applescript edit, then inspect the code and it's dependencies. Then export the script as an .app

**Q: Do I need to close the app when I do git work in other apps?** <br/>
A: Yes, its advisable to avoid git conflicts.

**Q: Do I need to close the app down if I changed the repositories.xml file?** <br/>
A: Yes, all changes to the repositories.xml file take effect at the opening of the app. 

**Q: Is the application heavy on the systems cpu?** <br/>
A: You should be fine with a reasonable amount of repos and reasonably sized repos. The app does not parse through each repo and each file for changes, but instead rely on GIT's own "git status" call to figure out if a change has taken place.

**Q: Can the application auto start after reboots?** <br/>
A: Yes, right click on the icon in the dock and hit start app on startup.

**Q: What if there are conflicts while GitBot tries to commit, push or pull?** <br/>
A: GitBot takes a non-destructive approch when conflicts occur. If gitbot stumbles upon a conflict gitbot will try again in the next intervall until the user shuts gitbot down and resolves the issue via terminal, or the github app etc. then open GitBot again and it will continue operations as usual.

**Q: What was the motivation behind building GitBot?** <br/>
A: I use [Textastic](http://www.textasticapp.com) alot on my IPhone and IPad. Textastic can edit code you have stored on an ftp server, but it doesn't support GitHub. So the process of syncronizing to GitHub gets in the way of having fun coding. So voila GitBot saw the light of day. 

###Todo's:
- [ ] Retrieve the remote account name from keychain
- [ ] The setup wizard
- [ ] Implement the commands: i and c
- [ ] The separation of Title and Description in a Commit msg
- [ ] Stress-test when GitBot gets into trouble
- [ ] Test if you are prompted for a password when requesting from a new keychain
- [ ] Add support for ssh authentication
- [ ] Move repositories.xml into the app
- [ ] Research git ignore
- [ ] **Bonus:** Instal git on server, and use it as origin instead of github for private projects
- [ ] **Bonus:** Humanise commit messages
