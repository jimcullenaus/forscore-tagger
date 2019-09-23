#!/bin/bash
if [ $# -eq 0 ]
then
	echo "Supply a file to tag."
	exit 1
fi

if [ ! -f "$1" ]
then
	echo "It is not a file"
	exit 1
fi

read -r -p "Enter the title: " title

read -r -p "Enter the author(s) (comma separated): " author

read -r -p "Enter the genre(s) (comma separated): " genre

read -r -p "Enter the number of sharps or flats (flats are negative) in the key: " keysf

read -r -p "Enter 1 if minor key, 0 if major key: " keymi

read -r -p "Enter any keywords, comma separated: " keywords

exiftool -Title="$title" -Author="$author" -Subject="$genre" -Keywords="keysf:$keysf,keymi:$keymi,$keywords" "$1"
