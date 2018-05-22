###### AutoHotkey script for turning SHIFT+HOME into an END, and SHIFT+HOME+CTRL into SHIFT+END.

```
; AutoHotKey script for END-button on HOME+SHIFT

Ctrl & Home::
	if (GetKeyState("Shift", "P"))         
		Send, {Shift}+{End}
	else
		Send, {End}
return
```

###### AutoHotkey script for turning CTRL+SHIFT+ALT+LEFT/RIGHT/DOWN into media controls.

```
; AutoHotKey script for media controls using Ctrl(^)/Shift(+)/Alt(!) with the arrow keys.

^!+Left::	Send, {Media_Prev}

^!+Right::	Send, {Media_Next}

^!+Down::	Send, {Media_Play_Pause}
```
