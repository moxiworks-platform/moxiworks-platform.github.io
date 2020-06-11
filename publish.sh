#!/bin/sh

git commit -a -m "doc updates"
git fetch upstream
git merge upstream/develop
EXECJS_RUNTIME=Node bundle exec middleman build --clean
git checkout gh-pages
git merge upstream/gh-pages
mkdir old
mv * old
mv old/build/* ./
rm -r old
git add *
git commit -a -m "doc build"
git checkout master
git merge gh-pages 
git checkout develop
git push upstream master --force
git push upstream develop --force
git push upstream gh-pages --force
