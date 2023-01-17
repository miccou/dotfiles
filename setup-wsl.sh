#!/bin/bash

# Clone the dotfiles repository
mkdir -p ~/dev/dotfiles
git clone https://github.com/miccou/dotfiles.git ~/dev/dotfiles

# Install zsh
sudo apt update && sudo apt install -y \
    zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm

# Change default shell to zsh
chsh -s $(which zsh)

# Copy custom dotfile
cat ~/dev/dotfiles/.zshrc > $HOME/.zshrc