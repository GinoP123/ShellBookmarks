#!/bin/bash

current_bookmark=$(get_current_bookmark.sh)
found=$?

if [[ "$1" == "delete" ]]; then
	if [[ $found == "0" ]]; then
		bookmark_handler.sh "delete" "$current_bookmark"
	else
		current_bookmark=1
	fi
elif [[ $found != "0" ]]; then
	set_next_bookmark.sh
	current_bookmark=$(get_current_bookmark.sh)
fi

next="$current_bookmark"
while
	next=$(( ( next + 1 ) % 10 ))
	bookmark_handler.sh "get" "$next" > /dev/null
	[[ $? != "0" && "$next" != "$current_bookmark" ]]
do
	continue
done

cd $(bookmark_handler.sh "get" "$next")
unset current_bookmark found next

