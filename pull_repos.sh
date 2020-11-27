#!/bin/bash

# hci omscs
GREET=$'\n\n---------- Pulling git repos: ----------'
echo "$GREET"

for dir in scripts c_programming learn_c_thw js210 java_masterclass codewars exercism
do
  cd ~/$dir
  STR=$'\n\nChecking for changes to'
  echo "$STR $dir ..."
  git pull
done

