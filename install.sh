#!/bin/sh
clear
echo "Welcome to my dotfiles!"
echo "This is the install script"
echo ""
read -p "Would you like to install BetterDiscord? [y/N] " BetterDiscord
BetterDiscord=$(echo "$BetterDiscord" | tr '[:upper:]' '[:lower:]')
if [ "$BetterDiscord" = "y" ] || [ "$BetterDiscord" = "yes" ]; then
	echo "Installing BetterDiscord..."
	rm -rf ~/.config/BetterDiscord/
	ln -s ~/dotfiles/Betterdiscord/BetterDiscord/ ~/.config/
else
	echo "Skipping BetterDiscord"
fi

echo ""

read -p "Would you like to install hyprland? [Y/n] " Hyprland
Hyprland=$(echo "$Hyprland" | tr '[:upper:]' '[:lower:]')
if [ "$Hyprland" = "n" ] || [ "$Hyprland" = "no" ]; then
	echo "Skipping Hyprland"
else
	echo "Installing Hyprland..."
	rm -rf ~/.config/hyprland/
	ln -s ~/dotfiles/hyprland/ ~/.config/
fi

echo ""

read -p "Would you like to install Alacritty? [Y/n] " Alacritty
Alacrity=$(echo "$Alacritty" | tr '[:upper:]' '[:lower:]')
if [ "$Alacritty" = "n" ] || [ "$Alacritty" = "no" ]; then
	echo "Skipping Alacritty"
else
	echo "Installing Alacritty..."
	rm -rf ~/.config/alacritty/
	ln -s ~/dotfiles/alacritty/ ~/.config/
fi

echo ""

read -p "Would you like to install NeoVim? [Y/n] " NeoVim
Neovim=$(echo "$NeoVim" | tr '[:upper:]' '[:lower:]')
if [ "$NeoVim" = "n" ] || [ "$NeoVim" = "no" ]; then
	echo "Skipping NeoVim"
else
	echo "Installing NeoVim..."
	rm -rf ~/.config/nvim/
	ln -s ~/dotfiles/nvim/ ~/.config/
fi

echo ""

read -p "Would you like to install Pacman? [Y/n] " Pacman
Pacman=$(echo "$Pacman" | tr '[:upper:]' '[:lower:]')
if [ "$Pacman" = "n" ] || [ "$Pacman" = "no" ]; then
	echo "Skipping Pacman"
else
	echo "Installing Pacman..."
	rm -rf ~/.config/pacman/
	ln -s ~/dotfiles/pacman/ ~/.config/
fi

echo ""

read -p "Would you like to install Fuzzel? [Y/n] " Fuzzel
Fuzzel=$(echo "$Fuzzel" | tr '[:upper:]' '[:lower:]')
if [ "$Fuzzel" = "n" ] || [ "$Fuzzel" = "no" ]; then
	echo "Skipping Fuzzel"
else
	echo "Installing Fuzzel..."
	rm -rf ~/.config/fuzzel/
	ln -s ~/dotfiles/fuzzel/ ~/.config/
fi

echo ""

read -p "Would you like to install some scripts? [Y/n] " Scripts
Scripts=$(echo "$Scripts" | tr '[:upper:]' '[:lower:]')
if [ "$Scripts" = "n" ] || [ "$Scripts" = "no" ]; then
	echo "Skipping Scripts"
else
	echo "Installing Scripts..."
	rm -rf ~/scripts/
	ln -s ~/dotfiles/scripts/ ~/.config/
fi

echo ""

read -p "Would you like to install the wallpaper? [Y/n] " Wallpaper
Wallpaper=$(echo "$Wallpaper" | tr '[:upper:]' '[:lower:]')
if [ "$Wallpaper" = "n" ] || [ "$Wallpaper" = "no" ]; then
	echo "Skipping Wallpaper"
else
	echo "Installing Wallpaper..."
	rm -rf ~/Pictures/wallpapers/
	ln -s ~/dotfiles/wallpapers/ ~/Pictures/
fi

echo ""

read -p "Would you like to install zsh? [Y/n] " ZSH
ZSH=$(echo "$ZSH" | tr '[:upper:]' '[:lower:]')
if [ "$ZSH" = "n" ] || [ "$ZSH" = "no" ]; then
	echo "Skipping ZSH"
else
	echo "Installing ZSH..."
	rm ~/.zshrc
	ln -s ~/dotfiles/zsh/.zshrc ~/
	rm -rf ~/.config/zsh
	ln -s ~/dotfiles/Zsh/zsh/ ~/.config/
	rm ~/.p10k.zsh
	ln -s ~/dotfiles/Zsh/.p10k.zsh ~/
fi

echo ""

read -p "Would you like to install i3lock-color [y/N] " i3lockcolor
i3lockcolor=$(echo "$i3lock-color" | tr '[:upper:]' '[:lower:]')
if [ "$i3lockcolor" = "y" ] || [ "$i3lock-color" = "yes" ]; then
	echo "Installing i3lock-color..."
	rm -rf ~/.config/i3lock-color/
	ln -s ~/dotfiles/i3lock-color/ ~/.config/
else
	echo "Skipping i3lock-color"
fi

echo ""

read -p "Would you like to install Wlogout? [Y/n] " Wlogout
Wlogout=$(echo "$Wlogout" | tr '[:upper:]' '[:lower:]')
if [ "$Wlogout" = "n" ] || [ "$Wlogout" = "no" ]; then
	echo "Skipping Wlogout"
else
	echo "Installing Wlogout..."
	rm -rf ~/.config/wlogout/
	ln -s ~/dotfiles/wlogout/ ~/.config/
fi

echo ""

read -p "Would you like to install i3? [y/N] " I3
I3=$(echo "$I3" | tr '[:upper:]' '[:lower:]')
if [ "$I3" = "y" ] || [ "$I3" = "yes" ]; then
	echo "Installing i3..."
	rm -rf ~/.config/i3/
	ln -s ~/dotfiles/i3/ ~/.config/
else
	echo "Skipping i3"
fi

echo ""

read -p "Would you like to install Kitty? [y/N] " Kitty
Kitty=$(echo "$Kitty" | tr '[:upper:]' '[:lower:]')
if [ "$Kitty" = "y" ] || [ "$Kitty" = "yes" ]; then
	echo "Installing Kitty..."
	rm -rf ~/.config/kitty/
	ln -s ~/dotfiles/kitty/ ~/.config/
else
	echo "Skipping Kitty"
fi

echo ""

read -p "Would you like to install Polybar [y/N] " Polybar
Polybar=$(echo "$Polybar" | tr '[:upper:]' '[:lower:]')
if [ "$Polybar" = "y" ] || [ "$Polybar" = "yes" ]; then
	echo "Installing Polybar..."
	rm -rf ~/.config/polybar/
	ln -s ~/dotfiles/polybar/ ~/.config/
else
	echo "Skipping Polybar"
fi

echo ""

read -p "Would you like to install Rofi [y/N] " Rofi
Rofi=$(echo "$Rofi" | tr '[:upper:]' '[:lower:]')
if [ "$Rofi" = "y" ] || [ "$Rofi" = "yes" ]; then
	echo "Installing Rofi..."
	rm -rf ~/.config/rofi/
	ln -s ~/dotfiles/rofi/ ~/.config/
else
	echo "Skipping Rofi"
fi

echo ""

read -p "Would you like to install Swaylock? [y/N] " Swaylock
Swaylock=$(echo "$Swaylock" | tr '[:upper:]' '[:lower:]')
if [ "$Swaylock" = "y" ] || [ "$Swaylock" = "yes" ]; then
	echo "Installing Swaylock..."
	rm -rf ~/.config/swaylock/
	ln -s ~/dotfiles/swaylock/ ~/.config/
else
	echo "Skipping Swaylock"
fi

echo ""

echo "Thank you for installing my dotfiles!"
