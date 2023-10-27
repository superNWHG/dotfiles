# dotfiles
Hello, welcome to my dotfiles!

_This is my own Arch linux configuration, I hope you get some inspiration from this._

**Requirements**
-
- Arduino IDE -
You can install it by doing ``sudo pacman -S arduino``
- Discord -
You can install it by doing ``sudo pacman -S discord``
- Betterdiscord -
You can install it using the AUR by doing ``yay -S betterdiscord-installer``
- i3 -
You can install it by doing ``sudo pacman -S i3-wm``
- i3lock-color -
You can install it by doing ``yay -S i3lock-color``
- kitty -
You can install it by doing ``sudo pacman -S kitty``
- neovim -
You can install it by doing ``sudo pacman -S neovim``
- polybar -
You can install it by doing ``sudo pacman -S polybar``
- rofi -
You can install it by doing ``sudo pacman -S rofi``
- zsh -
you can install it by doing ``sudo pacman -S zsh``
- oh-my-zsh -
Installation instructions can be found [here](https://github.com/ohmyzsh/ohmyzsh/)
- feh -
You can install it by doing ``sudo pacman -S feh``

**Installation**
-
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
sudo chmod +x ~/dotfiles/install.sh
```

Execute the install script
```shell
./~/dotfiles/install.sh
```



**Manual Installation**

First, create a symlink for every file or directory:
```shell
sudo rm -rf ~/.config/file-or-directory-you-want-to-symlink/
ln -s ~/dotfiles/file-or-directory-you-want-to-symlink/ ~/.config/
```

For example, for kitty do:
```shell
sudo rm -rf ~/.config/kitty/
ln -s ~/dotfiles/Kitty/kitty/ ~/.config/
```

For .zshrc do:
```shell
sudo rm ~/.zshrc/
ln -s ~/dotfiles/Zsh/.zshrc ~/
```

For pacman.conf do:
```shell
sudo rm /etc/pacman.conf/
sudo ln -s ~/dotfiles/Pacman/pacman.conf/ /etc/
```

For rofi do:
```shell
sudo rm -rf ~/.local/share/rofi/
ln -s ~/dotfiles/Rofi/rofi/ ~/.local/share/

sudo rm -rf ~/.config/rofi/
sudo mkdir ~/.config/rofi/
ln -s ~/dotfiles/Rofi/config.rasi/ ~/.config/rofi/
```

For wallpapers do:
```shell
ln -s ~/dotfiles/Wallpapers/ ~/Pictures/
```
This is just a set of wallpaper I have used, currently I only use the dracula wallpaper (arch.png). Feel free to use any of them or add more.

For Arduino do:
```shell
sudo mv /usr/share/arduino/lib/theme/ /usr/share/arduino/lib/theme.bak/
sudo ln -s ~/dotfiles/Arduino/theme/ /usr/share/arduino/lib/
```

For oh my zsh do:
```shell
sudo rm -rf ~/.oh-my-zsh/custom/
```
IMPORTANT: _do not create a symlink for oh my zsh because it will lead to update failures._

For powerlevel10k do:
```shell
sudo rm -rf ~/.p10k.zsh/
ln -s ~/dotfiles/Zsh/.p10k.zsh ~/
```

I'm currently working on hyprland, so everything is currently being tested.
