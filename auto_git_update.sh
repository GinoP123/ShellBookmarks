#!/bin/zsh

message="Auto Git Update $(date)"
for bookmark in 1 2 3 4 5 6 7 8
do
	directory=$("$(dirname "$0")/bookmark_handler.sh" get $bookmark)
	if [[ -d "$directory/.git" && directory != '' ]]; then
		echo "Bookmark $bookmark: $directory"
		cd $directory
		git pull origin main
		git add .
		git commit -m "$message"
		git push origin main
		echo
	fi
done

 