#!/usr/bin/bash

echo "Enter your date : "
date_time=$(date)

read -e date_time

git add .
git commit --amend --no-edit --date="Sep 17 2020"

git pull --allow-unrelated-histories "https://github.com/Official21A/CommiterTestBench.git"
git push -u origin master
