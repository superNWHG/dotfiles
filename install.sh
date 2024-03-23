#!/bin/bash
# Install script for the dotfiles

# Create a debug.log

# Install betterdiscord
sudo rm -rf ~/.config/BetterDiscord/
ln -s ~/dotfiles/Betterdiscord/BetterDiscord/ ~/.config/

# Install hyprland
sudo rm -rf ~/.config/hypr/
ln -s ~/dotfiles/Hyprland/hypr/ ~/.config/

# Install alacritty
sudo rm -rf ~/.config/alacritty/
ln -s ~/dotfiles/Alacritty/alacritty/ ~/.config/

# Install neovim
sudo rm -rf ~/.config/nvim/
ln -s ~/dotfiles/Nvim/nvim/ ~/.config/

# Install pacman
sudo rm /etc/pacman.conf/
sudo ln -s ~/dotfiles/Pacman/pacman.conf /etc/

# Install fuzzel
sudo rm -rf ~/.config/fuzzel/
ln -s ~/dotfiles/Fuzzel/fuzzel/ ~/.config/

# Install scripts
sudo rm -rf ~/.config/scripts/
ln -s ~/dotfiles/Scripts/scripts/ ~/.config/

# Install wallpaper
sudo rm -rf ~/Pictures/wallpaper.jpg
ln -s ~/dotfiles/Wallpaper/wallpaper.jpg ~/Pictures/

# Install .zshrc
sudo rm -rf ~/.zshrc
ln -s ~/dotfiles/Zsh/.zshrc ~/.zshrc

# Install zsh plugins
sudo rm -rf ~/.config/zsh
ln -s ~/dotfiles/Zsh/zsh/ ~/.config/

# Install i3lock-color
sudo rm -rf ~/.config/swaylock/
ln -s ~/dotfiles/Swaylock/swaylock/ ~/.config/

# Install powerlevel10k
sudo rm -rf ~/.p10k.zsh
ln -s ~/dotfiles/Zsh/.p10k.zsh ~/

# Install wlogout
sudo rm -rf ~/.config/wlogout/
ln -s ~/dotfiles/Wlogout/wlogout/ ~/.config/
