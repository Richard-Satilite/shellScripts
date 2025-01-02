#! /bin/bash

# CONVERT FILE .jpg TO .png

if  ! command -v convert &> /dev/null; then
	echo "'convert' method not found. You can install using 'sudo apt install imagemagick' command"
	exit 1
fi


read -p "Type the .img files directory:" DIR

if [ ! -e "$DIR" ]; then
	echo "Invalid directory"
	exit 1
fi

for FILE in "$DIR"/*.jpg; do
	if [ -f "$FILE" ]; then
		BASE=$(basename "$FILE" .jpg)
		OUT="$DIR/$BASE.png"
		convert "$FILE" "$OUT"
		echo "File $FILE converted"
	fi
done

echo "Successful convert"
