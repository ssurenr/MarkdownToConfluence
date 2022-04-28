#!/bin/bash

#git diff --name-status HEAD^^ HEAD ${INPUT_FILESLOCATION}
git init
it config --global --add safe.directory /github/workspace
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
echo "---------TEST----------"
#echo ${GITHUB_REF}
git diff --name-only main..$BRANCH -- ${INPUT_FILESLOCATION}
#echo "******"
#echo ${GITHUB_HEAD_REF}

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