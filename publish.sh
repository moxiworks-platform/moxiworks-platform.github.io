#!/bin/sh

git commit -a -m "doc updates"
rake publish
git fetch origin
git merge origin/gh-pages
git push origin master
