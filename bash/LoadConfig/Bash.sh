# Configuration file for basic shell settings.

# Set a more pleasing prompt:
PS1='\[\e[32m\]\u@\h\$\[\e[0m\] '

# Set a stronger umask:
#umask 077
umask u=rwx,g=,o=

# Increase the upper limit on the number of open files:
ulimit -n 1024

# Don't accidentally log out:
IGNOREEOF=2

# Set location of inputrc
INPUTRC=~/.lcdir/bash/inputrc

# Include the HOME directory and Documents directory in the 'cd' search path:
CDPATH=.:~

# Include ~/bin in PATH at the end:
export PATH=${PATH}:~/bin
