# Provide a shell function to load configuration files. Once this
# definition is loaded into a bash shell, configuration files
# located in either ~/.local/bash/LoadConfig/<config>sh or
# in ~/.trunk/bash/LoadConfig/<config>.sh can be loaded into
# the shell environment at any time using "LoadConfig <config>".

LoadConfig ()
{
	[ $# -ne 1 ] && echo "$FUNCNAME: usage: $FUNCNAME <config>" && return

	# Make sure we pull files only from certain directories:
	local LOCAL=~/.local/bash/LoadConfig
	local LCDIR=~/.lcdir/bash/LoadConfig
	local BASE=`basename $1 .sh`

	# Local configuration files override files in the trunk:
	[ -r "$LOCAL/$BASE.sh" ] && . "$LOCAL/$BASE.sh" && return
	[ -r "$LCDIR/$BASE.sh" ] && . "$LCDIR/$BASE.sh" && return

	# The above failed, so print a message:
	echo "$FUNCNAME: Unable to load configuration \"$BASE\"."
}
