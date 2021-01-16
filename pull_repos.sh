#!/bin/bash

for dir in scripts omscs/gios omscs/sad apis_ruby unity_learning game_designs cplusplus_learning java_learning c_learning js210 codewars
do
  cd ~/$dir
  STR=$'\n\nChecking for changes to'
  echo "$STR $dir ..."
  git pull
done

