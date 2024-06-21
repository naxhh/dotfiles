# As the standard terminal has issues displaying the ANSI characters correctly
# we skip oh-my-posh for it.
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi

# Disable zsh autocorrect
unsetopt correct

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
