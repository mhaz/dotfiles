# ~/.bashrc
export PS1='\[\e[31m\]\u \[\e[90m\]\w \[\e[31m\]>\[\e[0m\] '
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export HISTCONTROL=ignoredups
export HISTSIZE=1000000

export PATH+=:~/.local/bin
export PATH+=:~/bin
export LD_LIBRARY_PATH+=:/usr/lib
# Shell settings.
shopt -s checkwinsize
complete -d cd
# auto complete on sudo
complete -c sudo

# Better TAB completion.
bind 'TAB: menu-complete'
bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'
bind 'set completion-map-case on'
bind 'set page-completions off'
bind 'set menu-complete-display-prefix on'
bind 'set completion-query-items 0'

# History completion.
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Aliases.
alias sl="ls"
alias cd..="cd .."

alias anakin="sudo pacman -Rns \$(pacman -Qtdq)"
alias refugees="pacman -Qm"

alias off="sudo shutdown -h now"
alias vlabo="bash ~/.screenlayout/ohnishilab.sh"
alias hlabo="bash ~/.screenlayout/horizontal_ohnishilab.sh"

# Touch all files recursively
alias rtouch="find  -type f  -exec touch {} +"

alias emacsnw="emacsclient -nw"
alias e="emacsclient -nw"
alias ve="emacs -q -nw"

alias hidden="ls -a | grep '^\.'"

# Start x on login.
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && \
    exec startx -- -keeptty > ~/.xorg.log 2>&1

# This is a workaround to PCL visualization crashing
export LIBGL_ALWAYS_SOFTWARE=1
