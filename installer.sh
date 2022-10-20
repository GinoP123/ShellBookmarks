#!/bin/bash

cd "$(dirname "$0")"
curr_dir="$PWD"

if [[ "$SHELL" == *zsh ]]; then
	alias_path="$HOME/.zprofile"
else
	alias_path="$HOME/.bash_profile"
fi

source_line="\n# Setting Alias For ShellBookmarks\n"
source_line="${source_line}source '$curr_dir/main.sh'\n"

mkdir -p "$curr_dir/bookmark_files"
for file in 0 1 2 3 4 5 6 7 8 9
do
	touch "$curr_dir/bookmark_files/${file}_file.txt"
done

if [[ $(cat "$alias_path") != *ShellBookmarks* ]]; then
	echo -e $source_line >> $alias_path
	echo -e "\n\tSuccessfully installed ShellBookmarks!\n"
else
	echo -e "\n\tERROR: ShellBookmarks is already installed!\n"
fi







