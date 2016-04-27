#!/bin/sh

git commit -a -m "doc updates"
git fetch origin
git merge origin/develop

rake publish BRANCH_NAME='master'
git push origin master
git push origin develop
git push origin gh-pages
