#!/bin/sh
cd octopress
if [ $? -ne 0 ]; then
	echo "blog root-dir not exist"
	exit 1
fi
git pull origin source
cd ./_deploy
git pull origin master
