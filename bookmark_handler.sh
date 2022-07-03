#!/bin/zsh

suffix="_file.txt"
bookmark_location="$(dirname $0)/bookmark_files"
bookmark_file="$bookmark_location/$2$suffix"

delete_bookmark()
{
    echo -n "" > "$bookmark_file"
}

regex='^[0-9]$'
if [[ "$2" =~ $regex ]]; then
    if [[ "$1" == "set" ]]; then
        echo "$PWD" > $bookmark_file
        print_bookmark.sh "$2"
    elif [[ "$1" == "get" ]]; then
        folder=$(cat "$bookmark_file")
        if [[ folder == "" || ! -d $folder ]]; then
        	delete_bookmark
        	exit 1
        fi
        echo $folder
    elif [[ "$1" == "delete" ]]; then
        print_bookmark.sh "$2" "delete"
        delete_bookmark
    else
        exit 1
    fi

    exit 0
fi

exit 1
