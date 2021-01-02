#!/bin/bash

for dir in scripts apis_ruby game_designs loo_java_thw c_programming learn_c_thw js210 java_masterclass codewars
do
  cd ~/$dir
  STR=$'\n\nChecking for changes to'
  echo "$STR $dir ..."
  git pull
done

