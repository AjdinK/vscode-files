# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias ll='ls -alF'
alias la='ls -A'
alias ls='ls -la'


alias update='sudo dnf5 update'
alias upgrade='sudo dnf5 upgrade'
alias install='sudo dnf5 install'
alias remove='sudo dnf remove'
alias dnf='dnf5'

alias dps='sudo docker ps -a'
alias di='sudo docker images'
alias dstart='sudo docker start'
alias dstop='sudo docker stop'
alias drm='docker rm'
alias drmi='docker rmi'
alias nrd="npm run dev"
alias alac="sudo vim .config/alacritty/alacritty.toml"
alias themes="alacritty-themes"
alias bash="sudo vim .bashrc"
alias cls="clear"


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
