# dotfiles
Hello, welcome to my dotfiles!


**Installation**

first, clone the repo by doing:
```git clone https://github.com/superNWHG/dotfiles.git```

Then, create a symlink for every file or directory:
```shell
ln -s ~/dotfiles/file-or-directory-you-want-to-symlink/ ~/.config/
```

For .zshrc do:
```shell
ln -s ~/dotfiles/.zshrc/ ~/.zshrc/
```

For pacman.conf do:
```shell
sudo ln -s ~/dotfiles/pacman.conf/ /etc/pacman.conf/
```

For rofi do:
```shell
ln -s ~/dotfiles/rofi/ ~/.local/share/
ln -s ~/dotfiles/config.rasi/ ~/.config/rofi/
```

For wallpapers do:
```shell
ln -s ~/dotfiles/wallpaper/ ~/Pictures/
```
This is just a set of wallpaper I have used, currently I only use the dracula wallpaper (arch.png). Feel free to use any of them or add more.

For Arduino (theme directory) do:
```shell
sudo mv /usr/share/arduino/lib/theme/ /usr/share/arduino/lib/theme.bak/
sudo ln -s ~/dotfiles/theme/ /usr/share/arduino/lib/
```

Install script coming soon!
