if [ "$TERM_PROGRAM" == "Apple_Terminal" ]; then
	export SVN_EDITOR="bbedit --create --new-window --wait --resume"
else
	export SVN_EDITOR="vi"
fi
