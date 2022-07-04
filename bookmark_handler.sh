#!/bin/zsh

suffix="_file.txt"
bookmark="$2"
if [[ "$1" == "delete" && "$bookmark" == "" ]]; then
    bookmark=$(get_current_bookmark.sh)
fi

bookmark_location="$(dirname $0)/bookmark_files"
bookmark_file="$bookmark_location/$bookmark$suffix"

regex='^[0-9]$'
if [[ "$bookmark" =~ $regex ]]; then
    if [[ "$1" == "set" ]]; then
        echo "$PWD" > $bookmark_file
        print_bookmark.sh "$bookmark"
    else
        folder=$(cat "$bookmark_file")        
        if [[ "$1" == "get" ]]; then
            if [[ $folder == "" ]]; then
                exit 1
            elif [ ! -d $folder ]; then
                exit 2
            fi
            echo -n $folder
        elif [[ "$1" == "delete" ]]; then
            print_bookmark.sh "$bookmark" "$folder"
            echo -n "" > "$bookmark_file"
        else
            exit 3
        fi
    fi
else
    exit 3
fi


