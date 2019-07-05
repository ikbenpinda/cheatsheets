### Cheatsheets // vim

[FYI/NTS: Jetbrains plugin](https://plugins.jetbrains.com/plugin/164-ideavim)

# Exiting vim / help i did a commit
```
:wq
```
You're welcome.

Edit text by entering insert mode(press ```i```). 
Exit back out(press ```esc```) and save by typing ```:w, enter``` and quit using ```:q, enter``` .

###### About the notation here.

To execute commands, you need to be in command mode. This usually just means hitting escape. 
You'll know when suddenly the h, j, k, l keys will start acting like the arrow keys. 

Any command starting with ```:``` can be executed by hitting ```escape, :```.
(This is because some commands are legacy from on old system called Ex.)
Any other command not starting like that can be entered the same way, but you'll not see what you're typing(the bottom line window won't show). This is normal.

## Navigating text

### Enable line numbers

```:set nu```

### Enable syntax highlighting

```syntax on```

### Jump to line

```:334 # Or any other line really.```

### Jump to column

```12, | # This does not require a colon.```

### Navigating words

Reminder: it's ```hjkl```, not ```jkl;```

You might just want to stick to ```e``` and ```b``` first.

_Hold shift during these to switch between words and partial words(e.g. first part of an hyphenated word)_

Start of word: 

```b```

End of word: 

```e```

Start of next word: 

```w```

Next matching brace:

```%```

### Editing

Insert / normal people mode:  
```i```

Command / "ok so how do i exit insert mode" mode  
```esc```

### deleting entire line  

```esc, dd```

### delete a word

the entire word:  
```daW```

until first hyphen:  
```daw```




