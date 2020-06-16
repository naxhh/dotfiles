This is a fork of https://github.com/atomantic/dotfiles
Go there to see a good readme and docs.

# Goal

Try to automate new mac configuration as much as possible,

## Before

* You will need `git` to clone the repo
* Sign in to the app store so `mas` can install stuff
* It would be also good to have `sublime text 3` installed, since it will create `subl` command if it's installed

## Installation

```bash
git clone --recurse-submodules https://github.com/naxhh/dotfiles.git ~/.dotfiles
cd ~/.dotfiles;
# run this using terminal (not iTerm, lest iTerm settings get discarded on exit)
./install.sh
```

## After

* When it finishes, open iTerm and press `Command + ,` to open preferences. Under Profiles > Colors, select "Load Presets" and choose the `Solarized Dark Patch` scheme. If it isn't there for some reason, import it from `~/.dotfiles/configs` -- you may also need to select the `Source Code Pro + Powerline` font.

* Install RunCat
* Install [spectacle](https://www.spectacleapp.com/)
* Install [authy](https://authy.com/download/)
* [Configure alfred](https://www.alfredapp.com/help/troubleshooting/cmd-space/)
* Go to Keyboard > Shortucts > Keyboard and change the "Move focus to next window" to cmd+<

## TODO

Try to use `brew install font-source-code-pro-for-powerline` for fonts in the next run.
