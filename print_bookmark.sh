#!/bin/zsh

folder=$(bookmark_handler.sh "get" "$1")

if [[ $? != "0" ]]; then
    echo -e "\n\tERROR, Invalid Syntax\n"
    exit 1
fi

if [[ "$2" == "delete" ]]; then
    echo -n "\n\tDeleted Hotkey $1 path: $folder\n\n"
else
    echo -n "\n\tHotkey $1 path: $folder\n\n"
fi

exit 0
