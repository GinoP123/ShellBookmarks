#!/bin/bash

for bookmark in 1 2 3 4 5 6 7 8 9 0
do
	output="$(bookmark_handler.sh "get" "$bookmark")"
	exit_status="$?"
	if [[ "$exit_status" != "0" ]]; then
		echo $bookmark
		if [[ "$exit_status" == "2" ]]; then
			exit 2
		fi

		exit 0
	fi
done

exit 1
