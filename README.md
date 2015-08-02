##Features:
- Automates common Git tasks such as commit, push and pull on a repeating interval
- Supports Github and other git services
- Requests password's from Keychain in osx
- Written in applescript for 100% transparency, all code is opensource

##How to install:
1. Download and install [Git](http://git-scm.com/download/mac)
2. Download the GitBot.app <link needed>
3. When you open the GitBot.app you are prompted with an instal-guide that will walk you through automating your first Git Project. You then provide local path, remote path, username, how often you want to perform tasks and where the password is stored in keychain. Then abra-kadabra you can sit back and let GitBot do the work for you.

##FAQ:
**- How do I make changes to the automated projects in the future?** If you need to add or remove projects, the repositories.xml file is located inside the GitBot.app, right click on the app and press open content.

**- Do i need to close the app when I do git work in other apps?** Yes, its advisable to avoid git conflicts.

**- Do i need to close the app down if I changed the settings.xml file?** Yes, all changes to the settings.xml file take effect at the opening of the app. 

**- Is the application heavy on the systems cpu?** You should be fine with a reasonable amount of repos and reasonably sized repos. The app does not parse through each repo and each file for changes, but instead rely on GIT's own "git status" call to figure out if a change has taken place.

**- Can the application auto start after reboots?** Yes, right click on the icon in the dock and hit start app on startup.

**- What if there are conflicts while GitBot tries to commit, push or pull?** GitBot takes a non-destructive approch when conflicts occur. If gitbot stumble upon a conflict gitbot will try again in the next intervall until the user shuts gitbot down and resolves the issue via terminal, or the github app etc. then open github again and gitbot will continue operations as usual.

**- What was the motivation behind building GitBot?** I use [Textmate](http://textmate.com) alot on my iphone and ipad. It can edit code you have stored on an ftp server, but it doesnt support GitHub. So the process of syncronizing to GitHub got in the way of having fun coding. So voila GitBot was born. 
