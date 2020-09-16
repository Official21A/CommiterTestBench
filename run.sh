#!/usr/bin/bash

# Getting the date from user
echo "Enter your date : "
date_time=$(date)
read -e date_time

# Performing a commit to the date of the user
git add .
git commit --amend --no-edit --date="$date_time"

git pull --allow-unrelated-histories "https://github.com/Official21A/CommiterTestBench.git"
git push -u origin master
