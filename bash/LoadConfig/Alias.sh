# Configuration file for defining useful bash shell aliases.

# Set some "safe" aliases:
alias cp='cp -ip'
alias mv='mv -i'
alias rm='rm -i'

# Set some file listing aliases:
alias ls='ls -F'
alias la='ls -A'
alias ll='ls -l'
alias lla='ll -A'
alias lt='ll -t'
alias lx='ll -@'
alias le='ll -e'

alias tip="top -s 2 -o cpu -O time -user $USER"
alias beep='printf "\a"'

alias up="cd .."
