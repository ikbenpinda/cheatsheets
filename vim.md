### Cheatsheets // vim

[FYI/NTS: Jetbrains plugin](https://plugins.jetbrains.com/plugin/164-ideavim)

# Exiting vim / help i did a commit
```
:wq
```
You're welcome.

Edit text by entering insert mode(press i), exit back out(press esc) and save using ```:w!``` and quit using ```:q``` 

## Navigating text

### Enable line numbers
```:set nu```

### Jump to line
```:334 # Or any other line really.```

### Navigating words

Reminder: it's ```hjkl```, not ```jkl;```

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

Insert / normal people mode
```i```
Command / "ok so how do i exit insert mode" mode
```esc```

### deleting entire line
```
esc, dd
```
### delete a word

the entire word
```daW```
until first hyphen
```daw```




