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
