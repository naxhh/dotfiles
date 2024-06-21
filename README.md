This is a fork of https://github.com/atomantic/dotfiles
Go there to see a good readme and docs.

# Goal

Prepare a working mac M1 in less than an hour.

Will install a [zsh](https://www.zsh.org/) sell with [Oh my posh](https://ohmyposh.dev/) and using the linux binaries.

It will install a miraid of software and change mac os configs, but sadly some can't be done automatically hence some manual tinkering is expected.

## Before

* You will need `git` to clone the repo (xcode install)
* Sign in to the app store so `mas` can install stuff
* Create SSH keys unless using HTTPS protocols for github
* It would be also good to have [Sublime Text](https://www.sublimetext.com/download) installed, since it will create `subl` command if found.

## Installation

```bash
git clone --recurse-submodules https://github.com/naxhh/dotfiles.git ~/.dotfiles
cd ~/.dotfiles;
# run this using terminal (not iTerm, lest iTerm settings get discarded on exit)
./install.sh
```

## After

* When it finishes, open iTerm and press `Command + ,` to open preferences. Under Profiles > Colors, select "Load Presets" and choose the `Solarized Dark Patch` scheme. If it isn't there for some reason, import it from `~/.dotfiles/configs`
* Under Profiles > Text change the font into `MesloLGM Nerd Font`
* Install RunCat
* Install [spectacle](https://www.spectacleapp.com/)
* Install [authy](https://authy.com/download/)
* [Configure alfred](https://www.alfredapp.com/help/troubleshooting/cmd-space/)
	* Go to Keyboard > Shortucts > Keyboard and change the "Move focus to next window" to cmd+<
* Install [NextCloud](https://nextcloud.com/install/) and configure to sync the notes & private cmd folders
* Install [obisidian](https://obsidian.md/download)

* Install go `gvm install go1.4`
* Install java `sdk install java `
