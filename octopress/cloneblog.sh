#!/bin/sh
git clone -b source git@github.com:xtom/xtom.github.io.git octopress
echo "clone source done~"
cd octopress
git clone git@github.com:xtom/xtom.github.io.git _deploy
echo "clone master done~"

