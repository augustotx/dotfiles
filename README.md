<h1 align="center">My Dotfiles</h1>

<p align="center">These are my dotfiles for BSPWM on linux.</p>

<h2 align="center"> Dependencies </h2>

To install them on Archlinux use this command (assuming you have yay installed):
```bash
yay -Sy qt5ct qt6ct lightly-qt tela-icon-theme-git catppuccin-cursors-mocha catppuccin-gtk-theme-mocha nwg-look picom qutebrowser network-manager-applet pavucontrol pamixer dunst micro neovim btop
```
<h2 align="center"> Installation </h2>
To install it you can either just donwload the files and put them in their folders, <b><i>OR</i></b> you can use GNU Stow to properly install this repository.

```bash
yay -S stow git --needed
cd folder_you_want # (e.g. ~/Documents)
git clone https://github.com/augustopereiratx/dotfiles
cd dotfiles
stow -vt /home/username/.config .config # symlinks config files
stow -vt /home/username/.local .local # symlinks scripts I use (.local/bin)
```
You're all set! Talk to me if you have any issues or want help with Linux.

<h2 align="center"> Contact Me </h2>
<p align="center">
  <a href="https://mastodon.social/@augustotx"><img src="assets/social/macchiato_mastodon.svg" width="64" height="64" alt="Mastodon Logo"/></a>
  <a href="https://reddit.com/u/AugustBrasilien"><img src="assets/social/macchiato_reddit.svg" width="64" height="64" alt="Reddit Logo"/></a>
</p>
