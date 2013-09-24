#!/bin/sh
cd octopress
if [ $? -ne 0 ]; then
	echo "blog root-dir not exist"
	exit 1
fi

title=$1
while [ "$title" == "" ]; do
	read -p "input Title: " title
done

echo $title

rake new_post["$title"]
