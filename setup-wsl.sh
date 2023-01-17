#!/bin/bash

# Clone the dotfiles repository
mkdir -p ~/dev/dotfiles
git clone https://github.com/miccou/dotfiles.git ~/dev/dotfiles

# Install zsh
sudo apt update && sudo apt install -y \
    zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change default shell to zsh
chsh -s $(which zsh)

# Copy custom dotfile
cat ~/dev/dotfiles/.zshrc > $HOME/.zshrc