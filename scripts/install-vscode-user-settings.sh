#! /bin/bash

# file location based on
# https://riptutorial.com/visual-studio-code/learn/100008/user-and-workspace-settings#settings-file-location

# Delete old file and replace with the one from this repo
rm ~/.config/Code/User/settings.json
ln -s `pwd`/scripts/vscode-user-settings.json ~/.config/Code/User/settings.json