# Define colors
DARK_GREY='\[\033[38;5;242m\]'
LIGHT_GREY='\[\033[38;5;247m\]'
LIGHTER_GREY='\[\033[38;5;250m\]'
WHITE='\[\033[38;5;255m\]'

BLUE='\[\033[0;34m\'
LIGHT_ORANGE='\[\033[1;31\]'
RESET='\[\033[0m\]'

# PS1 setup first is a bit spacious second is alot simpler
# uncomment following line for a different look
# PS1="${DARK_GREY}\u${LIGHT_GREY}@${LIGHTER_GREY}\h - ${WHITE}[\w]${RESET} \n   > "
PS1="${LIGHT_GREY}[\w] ${LIGHT_GREY}➤ ${RESET}"

# probably won't care to fix later
# LS Colors
# LS_COLORS="di=1;34:fi=0;34:"
# export LS_COLORS='di=1;34:fi=0:ln=1;36:pi=40;33:so=1;35:bd=40;33;01:cd=40;33;01:or=1;31:ex=1;32:*.tar=1;31:*.zip=1;31:*.jpg=1;35:*.png=1;35:*.gif=1;35:'
 #Apply LS Colors
# alias ls='ls --color=auto'

alias nv=nvim

alias cl=clear
alias d=exit
alias power='sudo poweroff'

alias build='cargo build'
alias run='cargo run'
alias tree='tree-rs'

cd ~
. "$HOME/.cargo/env"

# uncomment if you are a nerd who can't remember their machine specs and needs to be reminded everytime they open the terminal
# neofetch
