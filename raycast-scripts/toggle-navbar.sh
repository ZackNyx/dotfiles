#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle MenuBar
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ⚙️

# Documentation:
# @raycast.description Toggles the MenuBar visibility
# @raycast.author Nick
# @raycast.authorURL https://twitter.com/SquarkP

current_value=$(defaults -currentHost read NSGlobalDomain _HIHideMenuBar)
if [ $current_value = "1" ]
then
  defaults -currentHost write NSGlobalDomain _HIHideMenuBar -int 0
else
  defaults -currentHost write NSGlobalDomain _HIHideMenuBar -int 1
fi

# this doesn't do anything other than instatate the change
osascript -e 'tell application "System Events" to tell dock preferences to set autohide menu bar to false'
