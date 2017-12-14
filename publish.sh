#!/bin/sh

git commit -a -m "doc updates"
git fetch origin
git merge origin/develop
git checkout master
git merge develop 
bundle exec middleman build --clean
git checkout gh-pages
git fetch origin
git merge origin/gh-pages
mkdir old
mv * old
mv old/build/* ./
rm -r old
git commit -a -m "doc build"
git checkout develop
git push origin master
git push origin develop
git push origin gh-pages
git push upstream master
git push upstream develop
git push upstream gh-pages
