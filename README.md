# Some Dotfiles

Most configs should be compatible with all machines.

The "other" folder contains configs speccific for my setup (x1 Extreme gen 1 with 2 Dell U2419HC)

## Table of Contents
- [Todo](#Todo)
- [Installation](#Installation)
- [Screenshots](#Screenshots)
- [Configs](#General Configs)
- [My Laptop](#My Laptop)

## Todo
- xkcd mirrorboard
- custom bash prompt
- try zsh and fish
- i3 (config + scratchpad + other stuff)
- mouse does not warp to centre to empty window
- wallpaper when vertical
- make pulse sound good (+ make alsa good too)
- wallpaper folder (for i3, feh, lightdm, others)
- vim
- screen tearing not fully gone
- rofi plugins
> https://github.com/fdw/rofimoji
> https://github.com/svenstaro/rofi-calc
> https://github.com/mattydebie/bitwarden-rofi
> and more
- zathura
- polybar
- termite
- colors (for i3, i3status, polybar, others)
- custom os logo for lightdm (2bwm dwm) + backup current theme
- mpd
- ncmpcpp
- gtk + qt theme
- gestures (fusuma)
- writeup for each program with packages required
- brightness adjustment
- screenshot method
- power managment (tlp/powertop)
- shutdown/restart/etc
- screenshots
- syncthing
- NetworkManager (backups? + captive portals) (installed nm-connection-editor)
- custom dns servers + vpn (wireguard) + dns over https or dnscrypt
- recycle bin?
- file manager (ranger or something else)
- lightdm

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

