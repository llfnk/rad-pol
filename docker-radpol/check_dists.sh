#!/bin/bash

patch=${1:-false}
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Checking ENV files"
envArray=(.env)

for FILE in ${envArray[*]}
do
  echo "-----------------------------------------"
  echo -e "\e[0mProcessing ENV: \e[1m $FILE"
  echo -e "\e[0m"

  if [ -f "$DIR/$FILE" ]; then
      echo -e "\e[32m$FILE exists."
      echo "-----------------------------------------"
      echo -e "\e[31mChecking diff for $FILE \e[33m"
      diff -u "$DIR/$FILE" "$DIR/$FILE".dist
      if $patch; then
        echo -e "\e[31mMergind diff for $FILE \e[33m"
        diff "$DIR/$FILE" "$DIR/$FILE".dist > $DIR/tempPatch
        patch $DIR/$FILE $DIR/tempPatch
        rm tempPatch
      fi
      echo "-----------------------------------------"
  else
      echo -e "\e[31m$FILE does not exist."
      echo -e "\e[32mCreating $FILE using $FILE.dist"
      cp "$DIR/$FILE".dist "$DIR/$FILE"
  fi
done