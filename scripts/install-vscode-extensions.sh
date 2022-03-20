#!/bin/sh

# list installed extentions using: code --list-extensions
PACKAGES=(
  akamud.vscode-theme-onedark
  esbenp.prettier-vscode
  GrapeCity.gc-excelviewer
  ms-azuretools.vscode-docker
  PKief.material-icon-theme
  xabikos.JavaScriptSnippets
)

echo "Installing VSCODE Extensions..."

for i in "${PACKAGES[@]}"
do :
  code --install-extension "$i"
done
