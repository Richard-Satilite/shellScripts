#! /bin/bash

#VERIFY IF NGINX SERVER IS AVAILABLE

if pgrep nginx &> /dev/null; then
	echo "STATUS: OK $(date "+%Y-%m-%d %H:%M:%S")"
else
	echo "STATUS: OFF $(date "+%Y-%m-%d %H:%M:%S")"
fi
