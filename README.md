# dotfiles
Hello, welcome to my dotfiles!


**Installation**

first, clone the repo by doing:
```git clone https://github.com/superNWHG/dotfiles.git```

Then, create a symlink for every file or directory:
````ln -s ~/dotfiles/file-or-directory-you-want-to-symlink ~/.config````

For .zshrc do:
```ln -s ~/dotfiles/.zshrc ~/.zshrc```

For pacman.conf do:
```sudo ln -s ~/dotfiles/pacman.conf /etc/pacman.conf```

For rofi do:
```ln -s ~/dotfiles/rofi ~/.local/share/```
```ln -s ~/dotfiles/config.rasi ~/.config/rofi/```

Install script coming soon!
