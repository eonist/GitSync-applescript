# GitBot
Automate common git tasks


##FAQ:
- Do i need to close the app when I do git work in other apps? Yes, its advisable to avoid git conflicts.

- Do i need to close the app down if I changed the settings.xml file? Yes, all changes to the settings.xml file take effect at the opening of the app. 

- Is the application heavy on the systems cpu? You should be fine with a reasonable amount of repos and reasonably sized repos. The app does not parse through each repo and each file for changes, but instead rely on GIT's own "git status" call to figure out if a change has taken place.

- Can the application auto start after reboots? Yes, right click on the icon in the dock and hit start app on startup.
