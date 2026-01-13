#!/bin/bash

# Deploy to GitHub Pages
# Usage: ./deploy.sh YOUR_PERSONAL_ACCESS_TOKEN

TOKEN=$1
REPO_URL="https://${TOKEN}@github.com/boetsharpe/OOFT-Site.git"

cd "/Users/lesliesharpe/Dropbox/Leslie Archive/OOFT-Site"

# Set remote to use token
git remote set-url origin $REPO_URL

# Add all files
git add .

# Commit if there are changes
if ! git diff --staged --quiet; then
    git commit -m "Update site"
fi

# Push to main
git push origin main

echo "Deployed to GitHub Pages!"
