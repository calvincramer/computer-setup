# Obsidian settings

Editor
	Spell check -> on
	Readable line length -> off
	Fold heading -> on
	Fold indent -> on
	Show Line numbers -> on
	Use tabs -> off
Files & Links
	Automatically update internal links -> on
Core Plugins
	Outgoing Links -> on
	Templates -> on
	Starred -> on
	Slides -> on
Appearance -> Themes -> Manage
	Choose "Obsidian Nord"
	Edit the `.obsidian/themes/"Obsidian Nord.css"` file:
```sh
# Replace markdown-source-view tag with:
.markdown-source-view { font-family: 'Consolas', monospace; }

# Make colors darker:
# 				orig 		mine
    --dark0:  #2e3440; -> #16191f
    --dark1:  #3b4252; -> #1d2129
    --dark2:  #434c5e; -> #21252e
    --dark3:  #4c566a; -> #272c36
```