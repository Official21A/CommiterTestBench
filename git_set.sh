#!/usr/bin/bash

# Setting up the git repository
echo "Enter your repository url : "
read -e repourl

echo "Enter your branch name : "
read -e branchname

# Initialize
git init
git clone "$repourl"

# Add a remote
git remote add origin "$repourl"

# Add a new branch
git checkout -b "$branchname"

# Create a pull request
git pull

echo $(date) + " Repo created successfully." > config

# Sending the config file into repo
git push -u origin "$branchname"
