!/bin/bash

MESSAGE=$'\n\n\n\nUpdating local repo from remote ...'
echo "$MESSAGE"
source pull_repos.sh

MESSAGE=$'\n---------- Committing git repos: ----------'
echo "$MESSAGE"

for dir in scripts c_programming learn_c_thw js210 java_masterclass codewars exercism
do
  cd ~/$dir
  STR=$'\n\nCommitting changes to'
  echo "$STR $dir ..."
  git add .
  git commit -m "automated sync commit for $dir"
  git push  
done

