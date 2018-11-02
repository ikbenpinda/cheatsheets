# Cheatsheets // git

### Preparing a list of changes:

###### Unstage file / Keep changes but don't include them for the next commit.

    git reset HEAD *[/filename]

###### Shortcut for adding files (including ignored directories, like target/production/out):
    
    // Single file  
    git add */[filename]
    
    // Folder
    git add */[foldername]/**

###### Commit with short message.

    git commit -m "[message]"
  
### Checking made changes

###### Check commits across all your local branches:

    git log --all
    
###### Check commits and their respective file changes:

    git log --stat
    
###### Extended version of the log(filechanges, across local branches, timeline of commits, single line messages, :

    git log --stat --all --graph --oneline --decorate
   
### Stashing changes / Temporarily saving/loading work

###### To save uncommitted work... 

    git stash
    
###### and go back to it later:
    
    git stash pop

###### To check your stash:

    git stash list

###### or realize you fucked up and want to forget about it:

    git stash drop

###### When working on the _same_ branch, with _no_ made commits, and want to update the project without committing:

    git stash
    git pull --rebase
    git stash pop
    
### Advanced git-fu

###### After committed work you want to save, but can't pull-rebase because of overwritten files(this will kill uncommitted changes):  

    Option 1(does not take folders above current):
        git checkout -- .
        
    Option 2(Make sure to be aware of the difference with --soft!):
        git reset --hard
        
    Option 3(modifies index?):

        git add .
        git stash  
        git stash drop  
        git pull --rebase

###### When you just want to fuck shit up:
  
    git push --force
    
###### Add files while telling the .gitignore to go fuck itself:
  
    git add -f [file]
    
##### Ignore files that happen to be still included after adding them to your .gitignore:

    git rm -r --cached .
    git add .

###### Add all updated/modified files:
  
    git add -u
        
###### go back in time:
  
    git reset HEAD [first 6 digits of commit]

###### Push all local branches to remote:
  
    git push --all -u

##### When you already added files to a remote repository but forgot to link your existing local one:  

    git merge origin master --allow-unrelated-histories
