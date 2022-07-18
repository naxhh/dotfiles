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
    'coreutils',
    'dos2unix',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'fzf',
    'readline', // ensure gawk gets good readline
    'gawk',
    'gnupg',
    'gnu-sed',
    'grep',
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
    'direnv',
    'redis',
    'kubectl',
    'argocd',
    // we don't want it but some fonts do...
    'svn',
    'rbenv'
  ],
  cask: [
    'docker',
    'flux',
    'gpg-suite',
    'iterm2',
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
//    'Amphetamine',
//    'Alfred',
//    'Slack'
  ]
};
