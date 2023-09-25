# dotfiles
Hello, welcome to my dotfiles!


**Installation**

Clone the repo by doing:
```shell
git clone https://github.com/superNWHG/dotfiles.git
```
**Install using the install script (not tested yet)**

Make the script executable
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

Screenshots script coming soon!
