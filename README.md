# fn.app

This is an Automator app that toggles the
**"Use all F1, F2, etc. keys as standard function keys"**
option in macOS System Preferences. A task that is tedious
when done often (which programmers tend to do).

All it does is that it executes [this AppleScript snippet](http://apple.stackexchange.com/questions/59178/toggle-use-all-f1-f2-as-standard-keys-via-script#answer-60496):

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

Run `make install` (it copies `fn.app` to `/Applications` and `fn.workflow` to `~/Library/Services`).

(You can run `make clean` to remove those files again.)

In OS X 10.9 (Mavericks) and later, you also need to:

1. Open the `fn` app once either from spotlight or from `Applications` folder (it will do nothing but it's needed for the app to appear in  the accessibility menu in step 3)
2. Go to `System Preferences` > `Security & Privacy` > `Accessibility` > `Privacy` 
3. `Click the lock to make changes` and tick `fn.app` under `Allow the apps below to control your computer`.


![preferences](https://github.com/jkbrzt/macos-fn-toggle/blob/master/privacy-settings.png)


## Usage

Run the app. The fastest way to do it is from Spotlight:

1. Press `⌘ + space` (or similar) to open Spotlight.
2. Type `fn`, `fn.app` should be the Top Hit.
3. Hit `Enter`.

## Enable Keyboard shortcut

1. Go to `System Preferences` > `Keyboard` > `Shortcuts` > `Services` > `General` (at the end of the list) and assign a new shortcut to `fn` service


![keybard-shortcut](https://github.com/jkbrzt/macos-fn-toggle/blob/master/keyboard-shortcut.png)

