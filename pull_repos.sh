#!/bin/bash

for dir in scripts c_learning java_learning js210 apis_ruby game_designs codewars
do
  cd ~/$dir
  STR=$'\n\nChecking for changes to'
  echo "$STR $dir ..."
  git pull
done

