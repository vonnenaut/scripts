#!/bin/bash

host=`hostname`

MESSAGE=$'\n\n\n\n########## Checking for remote changes to pull to'
echo "$MESSAGE $host ... #####"

dirArray=(scripts munit omscs/gios omscs/sad apis_ruby unity_learning game_designs cplusplus_learning java_learning c_learning js210 codewars)

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

# TODO: https://stackoverflow.com/questions/5143795/how-can-i-check-in-a-bash-script-if-my-local-git-repository-has-changes
MESSAGE=$'\n\n########## Pull check complete.  Begin check for local changes'
echo "$MESSAGE on $host to push ... #####"

for dir in "${dirArray[@]}" 
do
  cd ~/$dir
  STR=$'Pushing local changes to'
  echo "$STR $dir ..."
  git add .
  git commit -m "automated sync commit for $dir on $host"
  git push
  SPACE=$'\n\n'
  echo "$SPACE"
done

MESSAGE=$'---------- All repos synced. ----------\n\n'
echo "$MESSAGE"

