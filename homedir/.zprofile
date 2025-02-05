##############################################################################
#Import the shell-agnostic (Bash or Zsh) environment config
##############################################################################
source ~/.profile

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=9999999999999               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=9999999999999               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
bindkey '^R' history-incremental-search-backward # ctr + r for reverse search

##############################################################################
# z-zsh setup
##############################################################################
. ~/.dotfiles/z-zsh/z.sh
function precmd () {
  z --add "$(pwd -P)"
}

