# Ubuntu desktop ScreenShot utility.

This is a simple, but modular/expandable utility to capture and share screenshots on Ubuntu Desktop.

## Installation
1. Run `install.sh` as a root/administrative user.
2. Edit the config at `/usr/local/SSShot/ssshot.config` (Only needed if you want to set up automatic remote server uploading, or change save paths etc. Everything is ready to go out of the box!).
3. Start using it! `ssshot -h`

I recommend using this utility with keyboard shortcuts.
![Keyboard Shortcuts](https://c.flm.pw/2018-09/Dbjux.png "Keyboard Shortcuts")

## Usage
There are currently 3 options available.
```
-h, --help                show brief help
-m, --module=MODULE       specify a module to use
-v, --verbose             show verbose messages
```

You can use the built in modules found in `/usr/bin/SSShot/modules/` or you can create your own! The utility automatically finds new modules inside the `/usr/bin/SSShot/modules/` directory. The module filename is used as the `-m`, `--module` paramater.