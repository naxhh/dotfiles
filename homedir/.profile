#############################################################
# Generic configuration that applies to all shells
#############################################################

# This stuff is needed earlier
eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.nvm/nvm.sh

source ~/.shellvars
source ~/.shellfn
source ~/.shellpaths
source ~/.shellaliases
source ~/.iterm2_shell_integration.`basename $SHELL`
# Private/Proprietary stuff (not to be checked into the public repo) :)
source ~/Dropbox/Private/.shellprivate
