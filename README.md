This is a fork of https://github.com/atomantic/dotfiles
Go there to see a good readme and docs.

# Goal

Try to automate new mac configuration as much as possible.

Project now works with M1 macs

## Before

* You will need `git` to clone the repo (xcode install)
* Sign in to the app store so `mas` can install stuff
* Create SSH keys unless using HTTPS protocols for github
* It would be also good to have `sublime text 3` installed, since it will create `subl` command if it's installed

## Installation

```bash
git clone --recurse-submodules https://github.com/naxhh/dotfiles.git ~/.dotfiles
cd ~/.dotfiles;
# run this using terminal (not iTerm, lest iTerm settings get discarded on exit)
./install.sh
```

## After

* When it finishes, open iTerm and press `Command + ,` to open preferences. Under Profiles > Colors, select "Load Presets" and choose the `Solarized Dark Patch` scheme. If it isn't there for some reason, import it from `~/.dotfiles/configs`
* Im currently using https://github.com/romkatv/powerlevel10k-media/blob/master/MesloLGS%20NF%20Regular.ttf as the font, not automated :(

* Install RunCat
* Install [spectacle](https://www.spectacleapp.com/)
* Install [authy](https://authy.com/download/)
* [Configure alfred](https://www.alfredapp.com/help/troubleshooting/cmd-space/)
	* Go to Keyboard > Shortucts > Keyboard and change the "Move focus to next window" to cmd+<
* Install [dropbox](https://www.dropbox.com/downloading) and configure to sync the private folder

* Install go `gvm install go1.4`
* Install java `sdk install java `