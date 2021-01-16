#!/bin/bash

MESSAGE=$'\n\n\n\n########## Pulling changes to local repo from remote ... ##########'
echo "$MESSAGE"
source ./scripts/pull_repos.sh

MESSAGE=$'\n\n########## Pull complete.  Begin push ... ##########\n'
echo "$MESSAGE"

for dir in scripts omscs/gios omscs/sad apis_ruby unity_learning game_designs cplusplus_learning java_learning c_learning js210 codewars
do
  cd ~/$dir
  STR=$'Pushing local changes to'
  echo "$STR $dir ..."
  git add .
  git commit -m "automated sync commit for $dir"
  git push
  SPACE=$'\n\n'
  echo "$SPACE"
done

MESSAGE=$'---------- All repos synced. ----------\n\n'
echo "$MESSAGE"

