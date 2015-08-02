##Features:
- Automates common Git tasks such as **commit**, **push** and **pull** on a repeating interval
- Written in .applescript for 100% transparency, all code is open source

##How to install:
1. Download and install [Git](http://git-scm.com/download/mac)
2. Download and open [GitBot](https://github.com/eonist/GitBot/archive/master.zip)

##FAQ:
**- Where does GitBot store passwords?** GitBot does not store passwords, GitBot requests passwords from keychain

**- How can I trust GitBot with my password?** You can always compile the .app yourself. Download the GitBot from the link provided above, open the GitBot.applescript file in Applescript edit, then inspect the code and it's dependencies. Then export the script as an .app

**- Do I need to close the app when I do git work in other apps?** Yes, its advisable to avoid git conflicts.

**- Do I need to close the app down if I changed the repositories.xml file?** Yes, all changes to the repositories.xml file take effect at the opening of the app. 

**- Is the application heavy on the systems cpu?** You should be fine with a reasonable amount of repos and reasonably sized repos. The app does not parse through each repo and each file for changes, but instead rely on GIT's own "git status" call to figure out if a change has taken place.

**- Can the application auto start after reboots?** Yes, right click on the icon in the dock and hit start app on startup.

**- What if there are conflicts while GitBot tries to commit, push or pull?** GitBot takes a non-destructive approch when conflicts occur. If gitbot stumbles upon a conflict gitbot will try again in the next intervall until the user shuts gitbot down and resolves the issue via terminal, or the github app etc. then open github again and gitbot will continue operations as usual.

**- What was the motivation behind building GitBot?** I use [Textmate](http://textmate.com) alot on my IPhone and IPad. Textmate can edit code you have stored on a ftp server, but it doesn't support GitHub. So the process of syncronizing to GitHub gets in the way of having fun coding. So voila GitBot saw the light of day. 
