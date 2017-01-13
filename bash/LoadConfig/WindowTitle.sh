# The following definitions provide support for dynamic window titles
# based on the current host and working directory. Window titles are
# set by defining the PROMPT_COMMAND shell variable, which gets
# executed prior to every prompt.
#
# An additional shell function (WindowTitle) is defined to preserve
# the window title functionaltiy inside commands that support breaking
# out into a shell. While the command is running, the window title
# displays the current commands and arguments. To use this capability,
# define aliases like the following examples:
#
# alias vi='WindowTitle vi'
# alias man='WindowTitle man'
# alias less='WindowTitle less'
# alias top='WindowTitle top'

# Define a function that can be used to set a window's title:
SetWindowTitle ()
{
	printf "\e]0;%s\a" "$*"
}

PROMPT_COMMAND='SetWindowTitle "$(hostname -s) [$(dirs +0)]"'

WithWindowTitle ()
{
	# Set the window title:
	local WINDOW_TITLE="$(hostname -s): $@"
	SetWindowTitle "$WINDOW_TITLE"

	# Export the window title so that any subshells of this command
	# will restore it when they exit (see trap below):
	export WINDOW_TITLE

	# Run the given command:
	"$@"
}

trap RestoreWindowTitle EXIT

RestoreWindowTitle ()
{
	# If we are running inside a subshell of a command run
	# using "WindowTitle", then WINDOW_TITLE will be set and
	# we need to restore it.
	if [ -n "$WINDOW_TITLE" ]; then SetWindowTitle "$WINDOW_TITLE"; fi
}

alias vi='WithWindowTitle vi'
alias man='WithWindowTitle man'
alias less='WithWindowTitle less'
