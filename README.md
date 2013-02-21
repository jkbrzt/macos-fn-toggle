# fn.app

This is an Automator workflow-created app that toggles the
**"Use all F1, F2, etc. keys as standard function keys"**
option in Mac OS System Preferences. A task that is tedious
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

Copy `fn.app` into `/Applications`.

## Usage

Run the app. The fastest way to do it is from Spotlight:

1. Press `⌘ + space` (or similar) to open Spotlight.
2. Type "fn", `fn.app` should be the Top Hit.
3. Hit RETURN.



