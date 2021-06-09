#!/bin/bash

remote=${1:-upstream}
branch=${2:-dev}
tag=$3
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Stashing"
git stash

echo "Fetching $branch"

git fetch "$remote"
if [ -z "$tag" ]
then
  git merge "$remote/$branch"
else
  git merge "$tag"
fi

echo "Update submodules"
git submodule update --init --recursive --remote


echo "Please restart docker-radpol stack if running"
