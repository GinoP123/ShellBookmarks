#!/bin/bash

bookmark=$(get_current_bookmark.sh)
if [[ $? != "0" ]]; then
	bookmark=$(next_open_bookmark.sh)
	exit_status="$?"
fi

if [[ "$exit_status" == "1" ]]; then
	echo -ne "\n\tERROR, All Hotkeys Filled\n"
	exit 1
elif [[ "$exit_status" == "2" ]]; then
	bookmark_handler.sh "delete" $bookmark
fi

bookmark_handler.sh "set" $bookmark
