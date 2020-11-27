#!/bin/bash

echo "\n\n\n\nUpdating local repo from remote ..."
source pull_repos.sh

GREET=$'\n---------- Committing git repos: ----------'
echo "$GREET"

for dir in scripts c_programming learn_c_thw js210 java_masterclass codewars exercism
do
  cd ~/$dir
  STR=$'\n\nCommitting changes to'
  echo "$STR $dir ..."
  git add .
  git commit -m "automated sync commit for $dir"
  git push  
done

