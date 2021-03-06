#!/bin/bash

ZSH_USER=$1

# update and install zsh and curl
sudo apt update && sudo apt install -y \
    zsh \
    curl


sudo chsh -s /usr/bin/zsh "$ZSH_USER"

echo "Basic installation complete. Please see the zsh readme for additional post commands."
