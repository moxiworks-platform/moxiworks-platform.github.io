# moxiworks-platform.github.io


## Editing

Use `develop` branch for any changes you're making; `master` is used as the actual publishing branch, 
so it will only contain the compiled end product. `gh-pages` branch is used for QA.

All the documents are in the `partials` directory. 

If you view the documentation, you can see the file structure maps out the structure of the document; 
sections are in directories and second-level sections are in individual files under those directories.

Each section & second-level section have their own partial. 

## Viewing
stuff is running off of middleman try the following (OS X has a Node.js issue that causes things to 
stop working if you just run normally)

```shell
EXECJS_RUNTIME=Node bundle exec middleman server
```

## Publishing

Use ye olde publish.sh script included in this repo. That should get your changes pushed. The script 
is rudimentary, so if you hit conflicts when merging remote develop branch, it's not going to help
you out.

### Publishing To QA

If you plan on updating QA docs, you'll need to add the moxiworks fork to your available repos:

`git remote add qa https://github.com/moxiworks/moxiworks-platform.github.io`

*note:* to make changes that are visible in qa, you'll need to merge changes to gh-pages branch; however, *ensure that you are making changes in develop so that published changes are also propagated to master on publish.*

#### Publishing Using a Pull Request

so, ideally, if you're using a pull request, your workflow could go something like:

`git checkout develop`
_do stuff_
`git commit sumthin`
`git pull-request -b moxiworks:develop` <- requires `hub` be installed on your system

If you're handling the other end of the PR, you'll need to merge the changes from `develop` into `gh-pages`. Your workflow could go something like:

`git checkout develop`
`git fetch qa`
`git merge qa/develop`
`git checkout gh-pages`
`git merge develop`
`git push qa gh-pages`

#### Publishing Directly To QA

If you just want to push to QA without a PR (not much need for PR in this project), your workflow could look something like:
`git checkout develop`
`git commit sumthin`
`git checkout gh-pages`
`git merge develop`
`git push qa develop`
`git push qa gh-pages`


