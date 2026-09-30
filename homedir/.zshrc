# ~/.zshrc

bindkey -e # Use emacs keymap

if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh-completions:${FPATH}"
fi

autoload -Uz compinit
compinit


# ------------------------------------------------------------------------------
# PLUGINS (Sourced after completions for best performance)
# ------------------------------------------------------------------------------
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# ------------------------------------------------------------------------------
# PROMPT - OH MY POSH
# ------------------------------------------------------------------------------
# As the standard terminal has issues displaying the ANSI characters correctly
# we skip oh-my-posh for it.
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  POSH_THEME="~/.dotfiles/homedir/posh-custom.json"
  eval "$(oh-my-posh init zsh --config $POSH_THEME)"
fi


# ------------------------------------------------------------------------------
# SETTINGS & ENVIRONMENT
# ------------------------------------------------------------------------------
unsetopt correct # Disable zsh autocorrect

# Commented out as not using it lately.
# if [[ -f .nvmrc && -r .nvmrc ]]; then
#   nvm use &> /dev/null
# elif [[ $(nvm version) != $(nvm version default)  ]]; then
#   nvm use default &> /dev/null
# fi


# SDKMAN
export SDKMAN_DIR="/Users/$(whoami)/.sdkman"
[[ -s "/Users/$(whoami)/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/$(whoami)/.sdkman/bin/sdkman-init.sh"

# Direnv
eval "$(direnv export zsh)";

# Travis
[ -f "/Users/$(whoami)/.travis/travis.sh" ] && source "/Users/$(whoami)/.travis/travis.sh"

# Ruby
eval "$(rbenv init -)"

#newrelic preflight
export NR_AI_ENABLE_SUBAGENT_WATCHER=1

