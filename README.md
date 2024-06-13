# moxiworks-platform.github.io

View the full wiki here: https://github.com/moxiworks-platform/moxiworks-platform.github.io/wiki

This project uses an unconventional deploy process.

Please read the the [Making Changes](https://github.com/moxiworks-platform/moxiworks-platform.github.io/wiki#making-changes) section in the wiki before proceed with any changes.

## Local App Setup and Testing

1. Make sure you have installed bundler version 1.16.6 - `gem install bundler -v 1.16.6`
2. Run `bundle install`
3. If your using macOS monetary or higher, `ffi` gem may not install correctly. If you see an error message about ffi, run `gem install ffi -v '1.17.0' -- --with-cflags="-Wno-error=implicit-function-declaration"`
    Reference: https://stackoverflow.com/questions/73031300/cant-install-ffi-v-1-12-2-on-mac-os-monterey
4. Run `bundle update ffi --minor` to update ffi in the Gemfile.lock and install all other gems
5. To start the middleman server `EXECJS_RUNTIME=Node bundle exec middleman server`
6. If your using macOS M1 or higher and you see an error message about `dyld[5463]: missing symbol called`, it is likely because of the `therubyracer` gem.
    Ref: https://www.rubyonmac.dev/how-to-install-therubyracer-on-m1-m2-apple-silicon-mac
7. Remove the `therubyracer` gem (or comment out) from the Gemfile and run `bundle install`
8. Run `EXECJS_RUNTIME=Node bundle exec middleman server` to start the server
9. You can now view the site at `http://MBP-G2XMJG24CT.local:4567/ (http://192.168.0.109:4567/)`
Note: Do not commit the changes made to gemfile and gemfile.lock which removes the `therubyracer` gem.
