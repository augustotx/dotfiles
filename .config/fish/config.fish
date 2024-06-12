export $(dbus-launch)
export UNPKG_ROOT="$HOME/.unpkg"
export UNPKG_CACHE="$UNPKG_ROOT/unpkg/cache"
if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting ""

    #aliases
    alias cd..='cd ..'
    alias e='exit'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'
    alias l='eza -lahF --color=always --icons --sort=size --group-directories-first'
    alias less='bat'
    alias ls='eza -lhF --color=always --icons --sort=size --group-directories-first'
    alias lst='eza -lahFT --color=always --icons --sort=size --group-directories-first'
    alias mv='mv -i'
    alias pdw="pwd"
    alias wget="wget -c" # continue the download
    alias updatesys="sudo xbps-install -Su && flatpak update"
    alias neofetch="fastfetch"
    export VISUAL="gedit"
    export EDITOR="nvim"
    export PATH="$PATH:/home/rex/.local/bin/:/home/rex/.unpkg/bin/"
end
