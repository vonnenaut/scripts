#!/bin/bash

# hci omscs
GREET=$'\n\n---------- Pulling git repos: ----------'
echo "$GREET"

for dir in scripts c_programming learn_c_thw js210 intro-info-sec java_masterclass codewars exercism
do
  cd ~/$dir
  STR=$'\nChecking for changes to'
  echo "$STR $dir ..."
  git pull
done

