# fn-toggle.app

<img align="left" src="https://github.com/jakubroztocil/macos-fn-toggle/blob/master/Logo.png">

`fn-toggle.app` programmatically toggles the
**"Use all F1, F2, etc. keys as standard function keys"**
option in macOS System Preferences. A task that is tedious
when done manually, which especially keyboard-heavy users,
such as programmers, tend to do very often.

![keyboard settings](https://github.com/jakubroztocil/macos-fn-toggle/blob/master/Screenshots/keyboard-settings.png)

All it does is that it executes 
[this AppleScript snippet](http://apple.stackexchange.com/questions/59178#answer-60496)
through an Automator-created app:

```applescript
tell application "System Preferences"
	reveal anchor "keyboardTab" of pane "com.apple.preference.keyboard"
end tell
tell application "System Events" to tell process "System Preferences"
	click checkbox 1 of tab group 1 of window 1
end tell
quit application "System Preferences"
```


## Installation

Run `make install` which installs the following files:

* `/Applications/fn-toggle.app` — the app containing the script that toggles 
  the setting.
* `~/Library/Services/fn-toggle.workflow` — a service that allows 
  `fn-toggle.app` to be invoked with a keyboard shortcut.

(You can run `make clean` to remove those files again.)

In OS X 10.9 (Mavericks) and later, you also need to:

1. Open the `fn-toggle` app once either from spotlight or from `Applications` 
   folder (it will do nothing but it's needed for the app to appear in  the 
   accessibility menu in step 3)
2. Go to `System Preferences` > `Security & Privacy` > `Accessibility` > 
   `Privacy` 
3. `Click the lock to make changes` and tick `fn-toggle.app` under 
   `Allow the apps below to control your computer`.


![preferences](https://github.com/jakubroztocil/macos-fn-toggle/blob/master/Screenshots/privacy-settings.png)


## Usage

Run the app. The fastest way to do it is from Spotlight:

1. Press `⌘ + space` (or similar) to open Spotlight.
2. Type `fn`, `fn-toggle.app` should be the Top Hit.
3. Hit `Enter`.

## Enable Keyboard shortcut

1. Go to `System Preferences` > `Keyboard` > `Shortcuts` > `Services` > `General` 
   (at the end of the list) and assign a new shortcut to `fn-toggle` service


![keybard-shortcut](https://github.com/jakubroztocil/macos-fn-toggle/blob/master/Screenshots/keyboard-shortcut.png)


## Contact

Jakub Roztočil

* http://github.com/jakubroztocil
* http://twitter.com/jakubroztocil
* https://roztocil.co


## Alternatives

* https://github.com/Pyroh/Fluor — a really nice menubar application that allows you to automatically change the behaviour of the keyboard's fn keys depending on the active application.

