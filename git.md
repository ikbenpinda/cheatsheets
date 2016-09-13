#Cheatsheets // git

###### Unstage file / Keep changes but don't include them for the next commit.

    git reset HEAD *[/filename]

###### Shortcut for adding files (including ignored directories, like target/production/out):
    
    // Single file  
    git add */[filename]
    
    // Folder
    git add */[foldername]/**

###### Commit with short message.

    git commit -m "[message]"
  
###### Check what others did without pulling:

    git log --all --stat
    
###### To save uncommitted work... 

    git stash
    
###### and go back to it later:
    
    git stash pop
    
###### or realize you fucked up and want to forget about it:

    git stash drop

###### When working on the _same_ branch, but don't want to shit things up with merge commits (and keep uncommitted work):

    git stash
    git pull --rebase
    git stash pop

###### After committed work you want to save, but can't pull-rebase because of overwritten files(this will kill uncommitted changes):  

    git add .
    git stash  
    git stash drop  
    git pull --rebase

###### When you just want to fuck shit up:
  
    git push --force
    
###### Add files while telling the .gitignore to go fuck itself:
  
    git add -f [file]
    
###### go back in time:
  
    git reset HEAD [first 6 digits of commit]

###### Push all local branches to remote:
  
    git push --all -u
