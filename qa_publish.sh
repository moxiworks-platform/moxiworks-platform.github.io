#!/bin/sh


#set -e


tmpdir=/tmp/qadocbuild-`date +%s`

git commit -a -m "doc update"
git fetch qa
git checkout gh-pages
git reset --hard qa/gh-pages
git checkout develop
git merge qa/develop
bundle exec middleman build --clean
git checkout gh-pages
mkdir ${tmpdir}
mv * ${tmpdir}
mv ${tmpdir}/build/* ./
rm -r ${tmpdir}
git add *
git commit -a -m "doc build"
git checkout master
git reset --hard gh-pages
git checkout develop
git push qa master --force
git push qa develop
git push qa gh-pages
