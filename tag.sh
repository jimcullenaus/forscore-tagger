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

echo "Enter the title:"
read title

echo "Enter the author(s) (comma separated):"
read author

echo "Enter the genre(s) (comma separated):"
read genre

echo "Enter the number of sharps or flats (flats are negative) in the key:"
read keysf

echo "Enter 1 if minor key, 0 if major key:"
read keymi

echo "Enter any keywords, comma separated:"
read keywords

echo "exiftool -Title=\"$title\" -Author=\"$author\" -Subject=\"$genre\" -Keywords=\"keysf:$keysf,keymi:$keymi,$keywords\" $1"
# exiftool \
# -Title="The Witcher 3—Priscilla's Song" \
# -Author="Marcin Przybylowicz, Jonas Lefvert" \
# -Subject="Soundtrack" \
# -Keywords="keysf:-1,keymi:1,Witcher" \
# The\ Witcher\ 3\ Priscillas\ Song.pdf
