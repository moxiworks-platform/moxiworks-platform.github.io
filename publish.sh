#!/bin/sh

git commit -a -m "doc updates"
git fetch origin
git merge origin/develop
rake publish
git checkout gh-pages
git fetch origin
git merge origin/gh-pages
git checkout master
git merge gh-pages
git checkout develop
git push origin master
git push origin develop
git push origin gh-pages
