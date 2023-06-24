# Archlinux Dotfiles

Including:

* awesome `~/.config/awesome/`
* kitty `~/.config/kitty/`
* picom (`picom-ftlabs-git`) `~/.config/picom/`
* fontconfig `~/.config/fontconfig/`
* zsh (omz) `~/.zshrc`
* display manager `~/.xprofile`

## Installing Everything

### Installing the dotfiles


``` bash
# set up the config alias and clone the repository
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:FrozenArcher/dotfiles.git $HOME/.cfg
config config --local status.showUntrackedFiles no

config checkout
```

The step above might fail with a message like:
```
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

please backup the conflict files, delete them and re-run the command:
```bash
config checkout
```

*refer to [this article](https://www.atlassian.com/git/tutorials/dotfiles)*

### Installing softwares:

```bash
paru -S feh pavucontrol zsh awesome kitty xorg-xrandr picom-ftlabs-git ttf-jetbrains-mono-nerd ttf-lxgw-wenkai ttf-twemoji network-manager-applet udiskie blueman mate-power-manager xfce4-screensaver caffeine-ng pasystray fcitx5-im fcitx5-chinese-addons fcitx5-lua wget
```

### Installing oh-my-zsh:
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Changing default shell to zsh:
```bash
chsh -s /usr/bin/zsh
```
