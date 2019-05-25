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
git clone --recurse-submodules https://github.com/atomantic/dotfiles ~/.dotfiles
cd ~/.dotfiles;
# run this using terminal (not iTerm, lest iTerm settings get discarded on exit)
./install.sh
```

## After

* When it finishes, open iTerm and press `Command + ,` to open preferences. Under Profiles > Colors, select "Load Presets" and choose the `Solarized Dark Patch` scheme. If it isn't there for some reason, import it from `~/.dotfiles/configs` -- you may also need to select the `Hack` font and check the box for non-ascii font and set to `Roboto Mono For Powerline` (I've had mixed results for automating these settings--love a pull request that improves this)

* Install [alfred](https://www.alfredapp.com/)
* Install [spectacle](https://www.spectacleapp.com/)
