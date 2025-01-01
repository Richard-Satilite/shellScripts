#! /bin/bash

if [ "$#" -lt 2 ]; then
	echo "The program $0 requires file name and files that will be zip"
	exit 1
fi

for caminho in "$@"; do
	if [ ! -e "$caminho" ]; then
		echo "The path '$caminho' doen't exist"
		exit 1
	fi
done

file = "$1"
files=("${@:2}")
tar -czf "$file" "${files[@]}"

echo "Successful file zip in $file"
