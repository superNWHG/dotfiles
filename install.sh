#!/bin/bash
# Install script for the dotfiles

# Create a debug.log
sudo touch ~/dotfiles/debug.log/

# Install Arduino theme
sudo mv /usr/share/arduino/lib/theme/ /usr/share/arduino/lib/theme.bak/ >~/dotfiles/debug.log/
sudo ln -s ~/dotfiles/Arduino/theme/ /usr/share/arduino/lib/ >~/dotfiles/debug.log/

# Install betterdiscord
sudo rm -rf ~/.config/BetterDiscord/ >~/dotfiles/debug.log/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/Betterdiscord/BetterDiscord/ ~/.config/ >~/dotfiles/debug.log/

# Install i3
sudo rm -rf ~/.config/i3/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/i3/ ~/.config/ >~/dotfiles/debug.log/

# Install kitty
sudo rm -rf ~/.config/kitty/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/kitty/ ~/.config/ >~/dotfiles/debug.log/

# Install neovim
sudo rm -rf ~/.config/nvim/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/Nvim/nvim/ ~/.config/ >~/dotfiles/debug.log/

# Install pacman
sudo rm /etc/pacman.conf/ >~/dotfiles/debug.log/
sudo ln -s ~/dotfiles/Pacman/pacman.conf/ /etc/ >~/dotfiles/debug.log/

# Install polybar
sudo rm -rf ~/.config/polybar/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/Polybar/polybar/ ~/.config/ >~/dotfiles/debug.log/

# Install rofi
sudo rm -rf ~/.local/share/rofi/
ln -s ~/dotfiles/Rofi/rofi/ ~/.local/share/

sudo rm -rf ~/.config/rofi/
sudo mkdir ~/.config/rofi/
ln -s ~/dotfiles/Rofi/config.rasi/ ~/.config/rofi/

# Install scripts
sudo rm -rf ~/.config/scripts/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/Scripts/scripts/ ~/ >~/dotfiles/debug.log/

# Install wallpapers
sudo rm -rf ~/Pictures/Wallpapers/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/Wallpapers/ ~/Pictures/ >~/dotfiles/debug.log/

# Install zsh
sudo rm -rf ~/.zshrc >~/dotfiles/debug.log/
ln -s ~/dotfiles/Zsh/.zshrc ~/.zshrc >~/dotfiles/debug.log/

# Install oh my zsh
sudo rm -rf ~/.oh-my-zsh/custom/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/Zsh/custom/ ~/.oh-my-zsh/ >~/dotfiles/debug.log/

# Install i3lock-color
sudo rm -rf ~/.config/i3lock-color/ >~/dotfiles/debug.log/
ln -s ~/dotfiles/I3lock-color/i3lock-color/ ~/.config/ >~/dotfiles/debug.log/

# Install powerlevel10k
sudo rm -rf ~/.p10k.zsh >~/dotfiles/debug.log/
ln -s ~/dotfiles/Zsh/.p10k.zsh ~/ >~/dotfiles/debug.log/
