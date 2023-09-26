#!/bin/bash

#cp ./.gitmessage ~
#cp ./.gitconfig ~
# Install MesloLGS Nerd Font 
if [ "$(fc-list : family | grep 'MesloLGS Nerd Font')" == "" ]; then
    mkdir fonts && cd fonts || exit
    curl -OL https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Meslo.tar.xz
    tar -xf Meslo.tar.xz -C ~/.local/share/fonts      
    cd .. && rm -rf fonts
else
    echo 'MesloLGS Nerd Font has been installed'
fi

sh -c "$(cat ./zsh-in-docker.sh)" -- \
    -p git \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -p https://github.com/zsh-users/zsh-history-substring-search \
    -p https://github.com/zsh-users/zsh-syntax-highlighting \
    -p 'history-substring-search' \

# replace default .zshrc fi
cp ./.zshrc ~
# use pre-configured p10k
cp ./.p10k.zsh ~
########################################################################################################################
#### in vscode settings for devcontainer (not for User or Workspace), 
## Search for terminal.integrated.fontFamily value, 
## and set it to "MesloLGS Nerd Font".
