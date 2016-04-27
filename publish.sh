#!/bin/sh

git commit -a -m "doc updates"
git fetch origin
git merge origin/develop
BRANCH_NAME='master'
rake publish
git push origin master
git push origin develop
git push origin gh-pages
