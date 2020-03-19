#!/bin/sh

set -e
git commit -a -m "doc update"
git fetch qa
git checkout gh-pages
git reset --hard qa/gh-pages
git checkout develop
git merge qa/develop
bundle exec middleman build --clean
git checkout gh-pages
mkdir old
mv * old
mv old/build/* ./
rm -r old
git add *
git commit -a -m "doc build"
git checkout master
git reset --hard gh-pages
git checkout develop
git push qa master --force
git push qa develop
git push qa gh-pages
