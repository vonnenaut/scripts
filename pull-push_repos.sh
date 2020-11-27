#!/bin/bash

MESSAGE=$'\n\n\n\nPulling changes to local repo from remote ...'
echo "$MESSAGE"
source pull_repos.sh

MESSAGE=$'Pull complete.  Begin push ...'

for dir in scripts c_programming learn_c_thw js210 java_masterclass codewars exercism
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

