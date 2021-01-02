#!/bin/bash

MESSAGE=$'\n\n\n\n########## Creating directories ... ##########'
echo "$MESSAGE"

MESSAGE=$'\n\n########## Pull complete.  Begin push ... ##########\n'
echo "$MESSAGE"

for dir in apis_ruby game_designs learn_java_thw kandr-c_prog_lang c_programming learn_c_thw js210 java_masterclass codewars
do
  cd ~
  mkdir $dir
  cd $dir
  git init
done
