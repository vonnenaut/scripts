#!/bin/bash

for dir in scripts intro-info-sec hci c_programming learn_c_thw js210 java_masterclass codewars
do
  cd ~/$dir
  STR=$'\n\nChecking for changes to'
  echo "$STR $dir ..."
  git pull
done

