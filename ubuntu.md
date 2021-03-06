# Setup an Ubuntu system

## Install Ubuntu

- Either solely / dual boot with Windows, or
- On VM on Windows:
  1. VirtualBox on Win10: https://itsfoss.com/install-linux-in-virtualbox/
  2. Install 'guest additions' (better screen resolution, clipboard support, etc.) from the same link above.
  3. Misc settings that worked for me:
     - System -> Base memory: 6144MB or 8192MMB
     - System -> Acceleration -> Paravirtualization Interface: Hyper-V
     - Display -> Video Memory: 128MB
     - Display -> Graphics Controller: VMSVGA
     - Display -> NO Acceleration
  4. configure shared folder between host and guest: https://askubuntu.com/a/161883.

## Post-installation

Cool blog post: https://itsfoss.com/things-to-do-after-installing-ubuntu-20-04/

### Update Ubuntu

```
sudo apt update && sudo apt upgrade
sudo apt autoremove
```

### System stuff

1. Change terminal paste shortcut to CTRL+V (Terminal Preferences -> Shortcuts)
2. install misc tools:
   ```
   sudo apt install curl -y
   sudo apt install git  -y
   sudo apt install vim  -y
   # zsh
   sudo apt install zsh  -y
   sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   sudo apt install tree
   ```

### Dot files

```
mkdir ~/workspace
cd ~/workspace
git clone https://github.com/jongler-dev/dotfiles.git
cd dotfiles
./install.sh
```

### Generate ssh keys

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```
ssh-keygen -t ed25519 -C "your_email@domain.com"
or
ssh-keygen -t rsa -b 4096 -C "your_email@domain.com"
```

copy ssh key to remote server:

```
ssh-copy-id remote_username@server_ip_address
```

### Snap (install utility, e.g. for VSCode, Notepad++, etc)

```
sudo apt install snapd snapd-xdg-open -y
```

### VSCode

1. Install:
   ```
   sudo snap install --classic code
   ```
   > NOTE: if you have "Settings Sync" turned on then no need to manually install extensions, settings or keybindings :-)
2. (Optional) Install Fira Code fonts: https://github.com/tonsky/FiraCode.
3. Install extensions:
   ```
   ./scripts/install-vscode-extensions.sh
    or
   curl -L https://raw.githubusercontent.com/jongler-dev/new-pc-setup/main/scripts/install-vscode-extensions.sh | sh
   ```
4. Update settings:

   ```
   ./scripts/install-vscode-user-settings.sh
     or
   Ctrl + Shift + P ->
   Type 'Open Settings (JSON)' ->
   copy the values from ./scripts/vscode-user-settings.json
   ```

5. Keyboard bindings:
   ```
   ./scripts/install-vscode-key-bindings.sh
         or
   Ctrl + Shift + P ->
   Type 'Open Keyboard Shortcuts (JSON)' ->
   copy the values from ./scripts/vscode-key-bindings.json
   ```

### Google Chrome browser

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

Chrome extensions:

1. Json Formatter: open-source, lightweight, raw/parsed view: https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en
2. uBlock Origin: open-source ad/content blocker: https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm

### Node.js

Install Node, NPM, NVM from [here](https://github.com/nvm-sh/nvm#installing-and-updating). These commands were relevant at the time of writing this guide:

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
 -close terminal-
nvm install node
```

### Docker

1. Create a dockerhub account: https://hub.docker.com/signup
2. Install: https://docs.docker.com/engine/install/ubuntu/
3. Login to docker hub locally: `sudo docker login`
4. Test installation: `sudo docker run hello-world`
5. Install docker-compose (click the Linux tab): https://docs.docker.com/compose/install/#install-compose
6. Test docker-compose: `docker-compose -v`
7. Run Docker commands without sudo: https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user

## Nice to have :-)

### Notepad++

```
sudo snap install notepad-plus-plus
```

### Spotify

```
sudo snap install spotify
```

### VLC

```
sudo snap install vlc
```

Then install `ubuntu-restricted-extras` for additional codecs (https://itsfoss.com/install-media-codecs-ubuntu/). TL;DR:

```
sudo add-apt-repository multiverse
sudo apt update
sudo apt install ubuntu-restricted-extras
```
