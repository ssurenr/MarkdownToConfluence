#!/bin/bash

git init
git config --global --add safe.directory /github/workspace
#git fetch
echo "---------TEST----------"


git diff --name-only master.. -- ${INPUT_FILESLOCATION}

echo "----------lol---------"

git diff --name-only master... -- ${INPUT_FILESLOCATION}
#git diff --name-only ${{ github.event.push.base.sha }} ${{ github.sha }}

#mod="$(git diff --name-only --diff-filter=M HEAD^^ HEAD ${INPUT_FILESLOCATION})"
#cre="$(git diff --name-only --diff-filter=A HEAD^^ HEAD ${INPUT_FILESLOCATION})"

#readarray modDiffs <<< $mod
#readarray -t creDiffs <<< $cre

#echo "------Modified-------"

#for i in "${modDiffs[@]}";
#do
#    echo $i
#done

#echo "------Created-------"

#for i in "${creDiffs[@]}";
#do
#    echo $i
#done