# Some Dotfiles

Most configs should be compatible with all machines.

The "other" folder contains configs speccific for my setup (x1 Extreme gen 1 with 2 Dell U2419HC)

## Table of Contents
- [Todo](#Todo)
- [Installation](#Installation)
- [Screenshots](#Screenshots)
- [My Laptop](#My Laptop)

## Todo
- i3
- rofi plugins
- zathura
- polybar
- wallpaper
- termite
- colors
- mpd
- ncmpcpp
- dunst
- try zsh
- gtk + qt theme
- gestures
- ranger theme
- fix "other" folder
- writeup for each program with packages required
- brightness adjustment
- vertical monitor swapping
- screenshot method
- power managment
- shutdown/restart/etc
- screenshots

## Installation

This dotfiles are managed by using <a href="https://www.gnu.org/software/stow/">GNU stow</a> so be sure to install it.

---

**Important:** stow cannot create a symlink if the config files already exist. Be sure to delete the default configs before attempting install.

---

Stow will by default create symlinks to the parent of your current directory.

These commands should be excuted in `~/dotfiles` and assume you have cloned this repo to that location.

Another option is to use `-d` with the repo location.

To install my i3 config simply execute:

```
stow i3
```

This will symlink the files to `~/.config/i3`

---

When installing elsewhere use `-t` to specify the location.

To install systemwide configs (/etc configs):

```
sudo stow -t / pacman
```

To install for root user:

```
sudo stow termite -t /root
```

To uninstall use the `-D` argument:

```
stow -D i3
```
## Screenshots

Coming soon

## i3
install xdotool


## My Laptop

**note:** avoid using symlinks for /etc configs

### Mouse Settings

**note:** symlinks might not work you might have to manually move it
```
sudo pacman -S logid
sudo systemctl enable logid
```
Restart laptop

---

### Multihead and Nvidia

https://github.com/phillipberndt/autorandr
```
sudo pacman -S optimus-manager autorandr
sudo systemctl enable optimus-manager autorandr
```
Restart laptop

---

To reconfigure docked mode:
```
autorandr --remove docked
autorandr --save docked
```

### Redshift

set up geoclue or change redshift config 

**note:** config goes to two different locations (/etc/ and ~/.config/)
```
sudo pacman -S redshift
systemctl --user enable redshift
```
Restart laptop

### Zathura

```
sudo pacman -S zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps
```
