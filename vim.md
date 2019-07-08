### Cheatsheets // vim

[FYI/NTS: Jetbrains plugin](https://plugins.jetbrains.com/plugin/164-ideavim)

Sometimes you just need to flex on a colleague.

# Exiting vim / help i did a commit
```
:wq
```
You're welcome.

Edit text by entering _insert mode_(press ```i```). 
Exit back out to _command mode_(press ```esc```) and save by typing ```:w, enter``` and quit using ```:q, enter``` .

While in command mode, you can navigate by using your cursor or 'hjkl', as well as your arrow keys.

Concerning git: If you need to edit your message but already exited out(without pushing), consider ```git commit --amend```.

###### About the notation here.

To execute commands, you need to be in command mode. This usually just means hitting escape. 
You'll know when suddenly the h, j, k, l keys will start acting like the arrow keys. 

Any command starting with ```:``` can be executed by hitting ```escape, :```.
(This is because some commands are legacy from on old system called Ex.)
Any other command not starting like that can be entered the same way, but you'll not see what you're typing(the bottom line window won't show). This is normal.

## Navigating

Where most editors just use lines or words, vim has a some additional definitions to use.
It can be a bit confusing at first which to use, so here's a short summary.

*Definitions*  
Given the example 
```java
package example;

class Example{
    public static void main(String[] args){
         System.out.println("Hello world!");
    }
}
```
- Line: literally a line of text on your screen(as in, by line number), non-wrapped; ```System.out.println("Hello world!");```
- Sentence: "A line of text until a '.', '!' or '?' followed by either the end of a line, or by a space or tab." - the manual.
- Paragraph: Everything between two newlines; ```package example;``` and everything from ```class Example``` and onwards.
- word: a word in the natural sense; ```"Hello"```.
- WORD: a series of characters, including special characters between whitespace; ```"System.out.println(\"Hello)"```

### Enable line numbers

```:set nu```

### Enable syntax highlighting

```syntax on```
If the highlighting breaks, try :sy sync fromstart

### Jump to line

```:334 # Or any other line really.```

### Jump to column

```12, | # This does not require a colon.```

### Navigating lines

```(``` / ```)``` (parentheses)Move up/down a sentence.  
```{``` / ```}``` (curly braces)Move up/down a paragraph.  

```CTRL+B``` / ```CTRL+F``` Page up/down.  
```CTRL+D``` / ```CTRL+U``` Half a page up/down.

```H``` To move to the upper part of your screen.  
```M``` To move to the middle part of your screen.  
```L``` To move to the lower part of your screen.  

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

## Editing

Insert / normal people mode:  
```i```

Command / "ok so how do i exit insert mode" mode  
```esc```

### Undo / redo

```u``` to undo.

```CTRL+R``` to redo.

### Selecting text

Text is selected from _visual mode_(by pressing(```v```).

From here you can expand your selection starting at your cursor using the ```hjkl``` navigation keys.

You can select entire lines using ```V```(uppercase), or just entire blocks using ```CTRL+V```.

Example:

If you want to try this out, copy below into a new file and place your cursor at the X on line 4.  
(To do this, type ```:4```(jump to line 4), then ```33|```(jump to column 33) ).

```java
package loremipsum;
 class OhNoNotThisAgain {
  public static void Main(String[] args){
    System.out.println('Hello smXall world!');
  }
}
```

#### Selecting entire word - special signs excluded

```viw # visual(character) mode, inner, word```

In the example above, this should select "smXall".

### Move to start / end of selection

```O # Other```

#### Edit from selection

```c``` to cut and start typing something else(automatically changes to insert mode).

```A``` to append(automatically changes to insert mode).

```P``` to prepend.

### copy / paste 

Copy(a.k.a 'yank')

```y```

Paste

```p```

### Deletion

Delete 

```d```

### deleting entire line  

```esc, dd # Exit back to command mode, delete-delete(twice to delete line instead of word)```

### delete a word

the entire word:  
```daW # todo - meaning?```

until first hyphen:  
```daw # todo - meaning?```




