#### listing contents  

###### windows  
    dir   
    
###### linux/osx  
    ls -a   
    
#### finding file or program  

###### windows  
    where [whatever]  
    
###### linux/osx   
    which [whatever]  
    
    whereis [whatever]  
    
    mdfind [whatever]

#### Miscellaneous

###### Pinging a port:

    curl -s IP_ADDRESS:PORT >/dev/null && echo Success. || echo Fail.

#### Z-shell (oh-my-zsh)

###### Git status

    gst

##### Git log

    glog
    
##### Autocomplete paths

    tab, tab
    
### basic stuff

###### Moving stuff from one place to another

###### Chaining commands and outputs(stdout):
```sh
| # this is a pipe
> # this is a redirect
```

###### Moving stuff more conventionally:
```sh
cp SOURCE TARGET # you can't chain to cp though.
mv SOURCE TARGET # moves (or renames!)
```

###### Search for stuff

WHATEVER | grep KEYWORD OR PHRASE
```sh
# e.g:
ls -a | grep .md # list all markdown files in a folder.
```

###### Comparing stuff

```
diff -s file1 file2

# Confirmation when same + ignoring whitespace + comparing recursively / entire folders + side-by-side view:
diff -swry file1 file2
```

###### Disabling case sensitivity for bash using ~/.bashrc:

```sh
bind 'set completion-ignore-case on'
```

