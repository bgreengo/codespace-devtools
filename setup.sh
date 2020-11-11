#!/bin/bash

USERNAME=${USERNAME-vscode}

printf 'ZSH_THEME="clean"\nENABLE_CORRECTION="false"\nplugins=(git virtualenv)\nsource $ZSH/oh-my-zsh.sh' > "/home/$USERNAME/.zshrc"
# change 'docker' group to gid 800 
sudo groupmod -g 800 docker
# add current user to `docker` group
sudo usermod -a -G docker $USERNAME
printf 'ZSH_THEME="powerlevel9k/powerlevel9k"\nENABLE_CORRECTION="false"\nplugins=(git virtualenv)\nPOWERLEVEL9K_MODE="nerdfont-complete"\nPOWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable)\nPOWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs virtualenv)\nsource $ZSH/oh-my-zsh.sh' > "/home/$USERNAME/.zshrc"

echo "exec `which zsh`" > "/home/$USERNAME/.ashrc"