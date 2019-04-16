#!/bin/sh

git commit -a -m "doc updates"
git fetch origin
git merge origin/develop
bundle exec middleman build --clean
git checkout gh-pages
git merge origin/gh-pages
mkdir old
mv * old
mv old/build/* ./
rm -r old
git add *
git commit -a -m "doc build"
git checkout master
git merge gh-pages 
git checkout develop
git push origin master --force
git push origin develop --force
git push origin gh-pages --force
