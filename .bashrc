# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
#export LS_OPTIONS='--color=auto'
#eval "$(dircolors)"
#alias ls='ls $LS_OPTIONS'
#alias ll='ls $LS_OPTIONS -l'
#alias l='ls $LS_OPTIONS -lA'
#
## Some more alias to avoid making mistakes:
#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'

# Define colors

# Define colors
DARK_GREY='\[\033[38;5;242m\]'
LIGHT_GREY='\[\033[38;5;247m\]'
LIGHTER_GREY='\[\033[38;5;250m\]'
WHITE='\[\033[38;5;255m\]'

BLUE='\[\033[0;34m\'
LIGHT_ORANGE='\[\033[1;31\]'
RESET='\[\033[0m\]'

# Set PS1 with simple color prompt
PS1="${DARK_GREY}\u${LIGHT_GREY}@${LIGHTER_GREY}\h - ${WHITE}[\w]${RESET} \n   > "

# LS Colors
#LS_COLORS="di=1;34:fi=0;34:"

export LS_COLORS='di=1;34:fi=0:ln=1;36:pi=40;33:so=1;35:bd=40;33;01:cd=40;33;01:or=1;31:ex=1;32:*.tar=1;31:*.zip=1;31:*.jpg=1;35:*.png=1;35:*.gif=1;35:'


 #Apply LS Colors
alias ls='ls --color=auto'


cd ~
. "$HOME/.cargo/env"
