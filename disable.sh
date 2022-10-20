#!/bin/bash

for name in y s d ss dd 0 1 2 3 4 5 6 7 8 9
do
	if [[ "$(type $name)" == *alias* ]]; then
		unalias $name
	fi
done
