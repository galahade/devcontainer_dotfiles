#!/bin/bash

#cp ./.gitmessage ~
#cp ./.gitconfig ~

# replace default .zshrc fi
rm -f ~/.zshrc
cp ./.zshrc ~
# use pre-configured p10k
cp ./.p10k.zsh ~
########################################################################################################################
#### in vscode settings for devcontainer (not for User or Workspace), 
## Search for terminal.integrated.fontFamily value, 
## and set it to "MesloLGS Nerd Font".
