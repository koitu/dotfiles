# Dotfiles

Configs for my x1 Carbon G6 running Void Linux with 2 Dell U2419HC monitors

## Table of Contents
- [Installation](#Installation)
- [Screenshots](#Screenshots)
- [Configs](#General-Configs)
- [My Laptop](#My-Laptop)

## Installation
I use <a href="https://www.gnu.org/software/stow/">GNU stow</a> to link and manage these dotfiles so I highly recommend installing it.

---

**Important:** stow cannot create a symlink if the config files already exist. Be sure to delete the default configs before attempting install.

---

Clone this repo to `~/dotfiles` and enter the cloned folder
```
cd
git clone git@github.com:koitu/dotfiles.git
cd dotfiles
```
By default `stow <dir>` will symlink `dir` to the parent of your current directory.

----

To install my i3 config simply enter the git repo dir and execute:
```
stow i3
```
Since the i3 folder contains `.config/i3` it will be symlinked to `~/.config/i3`

If you wish to clone the repo elsewhere simply use `-d <dir>` where `dir` is the repo location.

---

When installing elsewhere use `-t` to specify the location.

To install for root user:

```
sudo stow termite -t /root
```

---

If you wish to uninstall some config use the `-D` argument:

```
stow -D i3
```
## Screenshots

Coming soon

## General configs

### pacman
change you can do:
you can use ccache to improve build times by caching the result of compilations for successive use.
In makepkg.conf the line `PKGEXT='.pkg.tar' makepkg` will allow you skip compression but you will have larger packages
### i3
install xdotool xbanish

### Zathura

```
sudo pacman -S zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps
```

## My Laptop

**note: avoid using symlinks for /etc configs**
---

### Mouse Settings

**note:** symlinks might not work you might have to manually move it
```
sudo pacman -S logid
sudo systemctl enable logid
```
Restart laptop

---

### Multihead and Nvidia
follow setup steps from here:
https://github.com/rliou92/python-umonitor
```
sudo pacman -S optimus-manager python-umonitor-git
sudo systemctl enable optimus-manager
```
move optimus-manager and umonitor configs to proper locations
umonitor config is already in i3 config
Restart laptop

---

### Redshift

set up geoclue or change redshift config

**note:** config goes to two different locations (/etc/ and ~/.config/)
```
sudo pacman -S redshift
systemctl --user enable redshift
```
Restart laptop


### nice fonts
FuraCode Nerd Font Mono
Hack (donno)
M+ 1c
Noto-sans-cjk
