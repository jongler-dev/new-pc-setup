# Setting up Windows 10 dev env

## WSL (Windows-Subsystem-Linux)
* detailed how-to (wsl, terminal, etc): https://docs.microsoft.com/en-us/windows/wsl/setup/environment
* or this: https://docs.microsoft.com/en-us/windows/wsl/install
* or see a great tutorial by fireship.io: https://fireship.io/lessons/windows-10-for-web-dev/

## Windows Terminal settings
* Enable Auto copy on select: https://www.jackofalladmins.com/knowledge%20bombs/dev%20dungeon/windows-terminal-copy-selection/

## zsh/oh-my-zsh
* install zsh: `sudo apt install zsh -y`
* install and setup oh-my-zsh: https://github.com/ohmyzsh/ohmyzsh

## create SSH keys
* https://ubuntu.com/tutorials/ssh-keygen-on-windows
* add the public key to your github account (in GH: Settings -> SSH and PGP keys)

## git setup
* setup name/email (not needed if using my dotfiles repo)
    ```
    git config --global user.name "Your Name"
    git config --global user.email "youremail@domain.com"
    ```
    > Note: try this approach for using multiple email addresses on one machine (git will ask for name/email per repo): https://orrsella.com/2013/08/10/git-using-different-user-emails-for-different-repositories/
* Fix line endings for windows (`core.autocrlf = input`): https://code.visualstudio.com/docs/remote/troubleshooting#_resolving-git-line-ending-issues-in-containers-resulting-in-many-modified-files
* or try this (`core.autocrlf = true`): https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings
* fix "wsl error: chmod on config.lock failed Operation not permitted": https://alessandrococco.com/2021/01/wsl-how-to-resolve-operation-not-permitted-error-on-cloning-a-git-repository

## dot files
Clone my [dotfiles repo](https://github.com/jongler-dev/dotfiles) and follow the instructions on its README file.

## NodeJs
Install Node.js (nvm, node, npm) on WSL: https://docs.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl

## Visual Studio Code
* Install extensions + settings.json file - same as in the Ubuntu setup.
* WSL specific: Install remote development extensions (wsl, ssh and containers): https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
* Fonts:
  * Anonymous Pro fonts: https://www.marksimonson.com/fonts/view/anonymous-pro
  * other cool fonts: fira code and cascadia code.
* Themes:
  * cobalt2 
* Extentions:
* Keyboard shortcuts:
  * Toggle whitespace rendering: Ctrl+w, Ctrl+w
  * TOOD: export all keyboard shortcuts?

## Docker
* official MS tutorial: https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers
* check out the fireship.io tutorial mentioned in the WSL section above.

## Google chrome extensions
* Json Formatter: open-source, lightweight, raw/parsed view: https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en
* uBlock Origin: open-source ad/content blocker: https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm

## Python
*TBD, this has not been implemented as of the time of writing this document*

Setting up a Python dev env: https://docs.microsoft.com/en-us/windows/python/web-frameworks
