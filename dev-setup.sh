#!/usr/bin/bash

# Fish
apt-add-repository ppa:fish-shell/release-4
apt update -y
apt install fish -y

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
rm -rf /opt/nvim-linux-x86_64
tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# Install LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Install FD
apt install fd-find -y
ln -s $(which fdfind) /opt/fd

# Install RG
apt install ripgrep

# Install nodejs
curl -LO https://nodejs.org/dist/v22.20.0/node-v22.20.0-linux-x64.tar.xz
tar -C /opt -xJf node-v22.20.0-linux-x64.tar.xz
rm node-v22.20.0-linux-x64.tar.xz

fish_add_path /opt/node-v22.20.0-linux-x64/bin/
fish_add_path /opt/

# Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
mkdir -p ~/.config/fish/
touch ~/.config/fish/config.fish
echo "starship init fish | source" >>~/.config/fish/config.fish
echo "alias v nvim" >>~/.config/fish/config.fish
echo "alias lt 'eza --tree --level=2 --long --icons --git'" >>~/.config/fish/config.fish
clear
fish
