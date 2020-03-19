#!/bin/sh

git commit -a -m "doc update"
git fetch qa
git merge qa/develop
bundle exec middleman build --clean
git checkout gh-pages
git merge qa/gh-pages
mkdir old
mv * old
mv old/build/* ./
rm -r old
git add *
git commit -a -m "doc build"
git checkout master
git merge gh-pages 
git checkout develop
git push qa master
git push qa develop
git push qa gh-pages
