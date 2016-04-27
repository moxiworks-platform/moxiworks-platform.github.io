# moxiworks-platform.github.io

# moxiworks-platform.github.io

## Editing

Use `develop` branch for any changes you're making; `master` is used as the actual publishing branch, 
so it will only contain the compiled end product. 

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

