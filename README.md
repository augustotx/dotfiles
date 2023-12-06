# My Dotfiles

These are my dotfiles for BSPWM on linux.

## Contact Me
<p align="center">
  <a href="https://mastodon.social/@augustotx"><img src="assets/social/macchiato_mastodon.svg" width="64" height="64" alt="Mastodon Logo"/></a>
  <a href="https://reddit.com/u/AugustBrasilien"><img src="assets/social/macchiato_reddit.svg" width="64" height="64" alt="Reddit Logo"/></a>
</p>

## Dependencies

To install them on Archlinux use this command (assuming you have yay installed):
```bash
yay -Sy qt5ct qt6ct nwg-look picom qutebrowser network-manager-applet pavucontrol pamixer dunst micro neovim btop catppuccin-gtk-theme-mocha
```
## Installation
To install it you can either just donwload the files and put them in their folders, ***OR*** you can use GNU Stow to properly install this repository.

```bash
yay -S stow git --needed
cd folder_you_want # (e.g. ~/Documents)
git clone https://github.com/augustopereiratx/dotfiles
cd dotfiles
stow -vt /home/username/.config .config # symlinks config files
stow -vt /home/username/.local .local # symlinks scripts I use (.local/bin)
```
You're all set! Talk to me if you have any issues or want help with Linux.