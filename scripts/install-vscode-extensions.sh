#!/bin/sh

PACKAGES=(
    xabikos.JavaScriptSnippets
    esbenp.prettier-vscode
    PKief.material-icon-theme
)

echo "Installing VSCODE Extensions..."

for i in "${PACKAGES[@]}"
do :
    code --install-extension "$i"
done
