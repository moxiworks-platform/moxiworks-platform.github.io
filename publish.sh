#!/bin/sh

git commit -a -m "doc updates"
rake publish
git fetch origin
git merge origin/develop
git push origin master
git push origin develop
git push origin gh-pages
