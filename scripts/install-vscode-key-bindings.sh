#! /bin/bash

# Delete old file and replace with the one from this repo
rm ~/.config/Code/User/keybindings.json
ln -s `pwd`/scripts/vscode-key-bindings.json ~/.config/Code/User/keybindings.json