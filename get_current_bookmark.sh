#!/bin/bash

for bookmark in 1 2 3 4 5 6 7 8
do
	folder=$(bookmark_handler.sh "get" "$bookmark")
	if [[ $folder == $PWD ]]; then
		echo $bookmark
		exit 0
	fi
done

exit 1
