#!/bin/bash

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
