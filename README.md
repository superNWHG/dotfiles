# Dotfiles

Hello, welcome to my dotfiles!

## **Requirements**

_Required_

- Hyprland -
  You can install it by doing `sudo pacman -S hyprland`
- Swaylock-effects -
  You can install it by doing `paru -S swaylock-effects`
- Alacritty -
  You can install it by doing `sudo pacman -S Alacritty`
- Neovim -
  You can install it by doing `sudo pacman -S neovim`
- Tofi -
  You can install it by doing `paru -S tofi`
- Zsh -
  You can install it by doing `sudo pacman -S zsh`
- Starship -
  You can install it by doing `sudo pacman -S starship`
- Dunst -
  You can install it by doing `sudo pacman -S dunst`

_Optional_

- Firefox -
  You can install it by doing `sudo pacman -S firefox`
- Webcord -
  You can install it using the AUR by doing `paru -S webcord`
- Whatstron -
  You can install it using the AUR by doing `paru -S whatstron-bin`
- KeepassXC -
  You can install it by doing `sudo pacman -S keepassxc`
- Zsh vim mode -
  You can install it using the AUR by doing `paru -S zsh-vi-mode`

## **Installation**

Clone the repo by doing:

```shell
git clone --recursive https://github.com/superNWHG/dotfiles.git ~/dotfiles/
```

Eventually update the submodules by doing:

```shell
git submodule update --init --recursive
```

**Install using the install script (not tested yet)**

Make the script executable if it is not already

```shell
chmod +x ~/dotfiles/install.sh
```

To install using the script do:

```shell
./~/dotfiles/install-hyprland.sh
```

**Manual Installation**

First, create a symlink for every file or directory:

```shell
rm -rf ~/.config/file-or-directory-you-want-to-symlink/
ln -s ~/dotfiles/file-or-directory-you-want-to-symlink/ ~/.config/
```

For example, for Alacritty do:

```shell
rm -rf ~/.config/alacritty/
ln -s ~/dotfiles/Kitty/alacritty/ ~/.config/
```

**.zshrc, pacman.conf, rofi and powerlevel10k are different.**

For .zshrc do:

```shell
rm ~/.zshrc
ln -s ~/dotfiles/Zsh/.zshrc ~/
```

For pacman.conf do:

```shell
sudo rm /etc/pacman.conf/
sudo ln -s ~/dotfiles/Pacman/pacman.conf/ /etc/
```

For rofi do:

```shell
rm -rf ~/.local/share/rofi/
ln -s ~/dotfiles/Rofi/rofi/ ~/.local/share/
rm -rf ~/.config/rofi/
mkdir ~/.config/rofi/
ln -s ~/dotfiles/Rofi/config.rasi ~/.config/rofi/
```

For powerlevel10k do:

```shell
rm -rf ~/.p10k.zsh
ln -s ~/dotfiles/Zsh/.p10k.zsh ~/
```

For Webcord do:

```shell
rm -rf ~/.config/WebCord/Themes/
ln -s  ~/dotfiles/Webcord/Themes/ ~/.config/WebCord/
rm ~/.config/WebCord/config.json
ln -s ~/dotfiles/Webcord/config.json ~/.config/WebCord/
```
