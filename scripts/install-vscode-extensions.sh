#!/bin/sh

PACKAGES=(
    xabikos.JavaScriptSnippets
    esbenp.prettier-vscode
    PKief.material-icon-theme
    ms-azuretools.vscode-docker
)

echo "Installing VSCODE Extensions..."

for i in "${PACKAGES[@]}"
do :
    code --install-extension "$i"
done
