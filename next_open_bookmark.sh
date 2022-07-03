#!/bin/zsh

for bookmark in 1 2 3 4 5 6 7 8 9 0
do
	folder="$(bookmark_handler.sh "get" "$bookmark")"
	if [[ "$folder" == "" || ! -d "$folder" ]]; then
		echo $bookmark
		exit 0
	fi
done

exit 1
