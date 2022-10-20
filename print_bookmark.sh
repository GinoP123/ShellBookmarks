#!/bin/bash

if [[ "$2" != "" ]]; then
    echo -ne "\n\tDeleted Bookmark $1 path: $2\n\n"
    exit 0
fi

folder=$(bookmark_handler.sh "get" "$1")
exit_status=$?
if [[ $exit_status == "3" ]]; then
    echo -ne "\n\tERROR, Invalid Syntax\n\n"
    exit 1
fi

echo -ne "\n\tBookmark $1 path: $folder\n\n"

