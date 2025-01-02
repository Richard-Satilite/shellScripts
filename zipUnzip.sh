#! /bin/bash

read -p "Choose the option: 'zip' or 'unzip'" option

case "$option" in
	"zip")
		read -p "Name of zip file (.tar.gz):" zipName
		read -p "List of files:" -a files
		tar -czf "$zipName" "${files[@]}"
		echo "Successful zip in $zipName"
	;;
	"unzip")
		read -p "Name o zip file (.tar.gz):" unzipName
		read -p "Dest dir:" destDir
		tar -xzf "$unzipName" -C "$destDir"
		echo "Successful unzip in $destDir"
	;;
	*)
	echo "Invalid option"
	exit 1
	;;
esac
