# The following bash function performs a command-line-based "Spotlight"
# search using the mdfind utility. mdfind allows for complex queries,
# but this script provides a simple interface to basic searches
# similar to what is done in the GUI.

spotlight ()
{
	[ $# -eq 0 ] && echo "$FUNCNAME: usage: $FUNCNAME [dir] <search>..." && return

	# Default search base is the current directory unless
	# specified by the first argument:
	local MY_DIR='.'
	[ $# -gt 1 ] && [ -d "$1" ] && MY_DIR="$1" && shift

	mdfind -onlyin "$MY_DIR" -interpret "$@"
}

