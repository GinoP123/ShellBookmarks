#!/bin/zsh

if [[ "$PATH" != *"$(dirname "$0")"* ]]; then
	export PATH="$PATH:$(dirname "$0")"
fi

alias p="print_bookmark.sh"
alias s="set_next_bookmark.sh"
alias ss="source cycle_bookmarks.sh"
alias dd="source cycle_bookmarks.sh delete"

goto()
{
	cd $(bookmark_handler.sh "get" "$1")
}

alias 0="goto 0"
alias 1="goto 1"
alias 2="goto 2"
alias 3="goto 3"
alias 4="goto 4"
alias 5="goto 5"
alias 6="goto 6"
alias 7="goto 7"
alias 8="goto 8"
alias 9="goto 9"
