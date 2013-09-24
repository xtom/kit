#!/bin/sh

function exitException()
{
	if [ $? -ne 0 ]; then
		echo "Error: "$1 1>&2
		exit 101
	fi
}
function OK()
{
	echo "OK: "$1
}

cd octopress
exitException "blog root-dir(octopress) not exist, make sure you've already clone your octopress reposition using cloneblog.sh!"


comment=$1
while [ "$comment" == "" ]; do
	read -p "input Title: " comment
done

echo $comment

rake generate
rake deploy
OK "deployed on your Github"

git add .
git commit -m "$comment"
git push origin source



