#!/bin/bash

for dir in scripts apis_ruby game_designs cpp_learning java_learning c_learning js210 codewars
do
  cd ~/$dir
  STR=$'\n\nChecking for changes to'
  echo "$STR $dir ..."
  git pull
done

