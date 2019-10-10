module.exports = {
  brew: [
    // http://conqueringthecommandline.com/book/ack_ag
    'ack',
    'ag',
    // https://github.com/wting/autojump
    'autojump',
    // alternative to `cat`: https://github.com/sharkdp/bat
    'bat',
    // Install GNU core utilities (those that come with macOS are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    'coreutils',
    'dos2unix',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'fzf',
    'readline', // ensure gawk gets good readline
    'gawk',
    'gnupg',
    'gnu-sed',
    // upgrade grep so we can get things like inverted match (-v)
    'grep --with-default-names',
    // better, more recent grep
    'homebrew/dupes/grep',
    // https://github.com/jkbrzt/httpie
    'httpie',
    'jq',
    'kafkacat',
    // Mac App Store CLI: https://github.com/mas-cli/mas
    'mas',
    // Install some other useful utilities like `sponge`
    'moreutils',
    'nmap',
    'openconnect',
    'reattach-to-user-namespace',
    // better/more recent version of screen
    'homebrew/dupes/screen',
    'tmux',
    'todo-txt',
    'tree',
    'ttyrec',
    // better, more recent vim
    'vim --with-client-server --with-override-system-vi',
    'watch',
    // Install wget with IRI support
    'wget --enable-iri',
    // https://hub.github.com/
    'hub',
    'awscli',
    // In order to install python 3.6 we need this, (https://github.com/jiansoung/issues-list/issues/13)
    'zlib',
    'sqlite',

    'direnv'
  ],
  cask: [
    'docker',
    'flux',
    'gpg-suite',
    'iterm2',
    'little-snitch',
    'macbreakz',
    'micro-snitch',
    'signal',
    'slack',
    'the-unarchiver',
    'vlc',
    'xquartz'
  ],
  gem: [
    'travis'
  ],
  npm: [
    'eslint',
    'instant-markdown-d',
    'npm-check-updates',
    'vtop'
  ],
  mas: [
    'Amphetamine'
  ]
};
