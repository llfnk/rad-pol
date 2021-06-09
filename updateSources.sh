#!/bin/bash

remote=${1:-upstream}
branch=${2:-dev}
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Stashing"
git stash

echo "Fetching $branch"

git fetch "$remote"
git merge "$remote/$branch"

echo "Please restart docker-radpol stack if running"
