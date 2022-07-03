#!/bin/zsh

bookmark=$(get_current_bookmark.sh)
if [[ $? != "0" ]]; then
	bookmark=$(next_open_bookmark.sh)
fi

if [[ $? != "0" ]]; then
	echo -n "\n\tERROR, All Hotkeys Filled\n"
	exit 1
fi

bookmark_handler.sh "set" $bookmark
