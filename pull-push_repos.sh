#!/bin/bash

MESSAGE=$'\n\n\n\n########## Checking for remote changes to pull ... ##########'
echo "$MESSAGE"

dirArray=(scripts omscs/gios omscs/sad apis_ruby unity_learning game_designs cplusplus_learning java_learning c_learning js210 codewars)

for dir in "${dirArray[@]}" 
do
  cd ~/$dir
  STR=$'\n\nChecking for changes to'
  echo "$STR $dir ..."
  git fetch origin
  reslog=$(git log HEAD..origin/master --oneline)
  if [[ "${reslog}" != "" ]] ; then
    git merge origin/master
  fi
done

MESSAGE=$'\n\n########## Pull check complete.  Begin check for local changes to push ... ##########\n'
echo "$MESSAGE"

for dir in "${dirArray[@]}" 
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

