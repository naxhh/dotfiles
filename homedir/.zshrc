bindkey -e # Use emacs keymap

source ~/.dotfiles/zsh-autocomplete/zsh-autocomplete.plugin.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Autocomplete bindings
bindkey '^I' autosuggest-accept # Make tab accept the suggestion

# As the standard terminal has issues displaying the ANSI characters correctly
# we skip oh-my-posh for it.
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  POSH_THEME="~/.dotfiles/homedir/posh-custom.json"
  #POSH_THEME="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cloud-context.omp.json"
  #POSH_THEME="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/illusi0n.omp.json"
  #POSH_THEME="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/amro.omp.json"
  #POSH_THEME="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/bubblesextra.omp.json"

  #POSH_THEME="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/atomic.omp.json"
  eval "$(oh-my-posh init zsh --config $POSH_THEME)"
fi

# Disable zsh autocorrect
unsetopt correct

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ -f .nvmrc && -r .nvmrc ]]; then
  nvm use &> /dev/null
elif [[ $(nvm version) != $(nvm version default)  ]]; then
  nvm use default &> /dev/null
fi


export SDKMAN_DIR="/Users/$(whoami)/.sdkman"
[[ -s "/Users/$(whoami)/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/$(whoami)/.sdkman/bin/sdkman-init.sh"

# Direnv
eval "$(direnv export zsh)";

# https://github.com/jiansoung/issues-list/issues/13
# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

# added by travis gem
[ -f "/Users/$(whoami)/.travis/travis.sh" ] && source "/Users/$(whoami)/.travis/travis.sh"

# Ruby
eval "$(rbenv init -)"
