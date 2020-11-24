#!/bin/bash

echo "Updating local repo from remote ..."
source pull_repos.sh

GREET=$'\n\n---------- Committing git repos: ----------'
echo "$GREET"

for dir in scripts learn_c_thw js210 intro-info-sec java_masterclass codewars exercism
do
  cd ~/$dir
  STR=$'\nCommitting changes to'
  echo "$STR $dir ..."
  git add .
  git commit -m "automated sync commit for $dir"
  git push  
done

