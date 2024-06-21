module.exports = {
  brew: [
    'jandedobbeleer/oh-my-posh/oh-my-posh', // https://ohmyposh.dev/docs/installation/macos
    'ack', // http://conqueringthecommandline.com/book/ack_ag
    'ag',
    'autojump', // https://github.com/wting/autojump
    'bat', // alternative to `cat`: https://github.com/sharkdp/bat
    'coreutils', // Install GNU core utilities (those that come with macOS are outdated)
    'dos2unix',
    'findutils', // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'fzf',
    'readline', // ensure gawk gets good readline
    'gawk',
    'gnupg',
    'gnu-sed',
    'grep',
    'httpie', // https://github.com/jkbrzt/httpie
    'jq',
    'kafkacat',
    'mas', // Mac App Store CLI: https://github.com/mas-cli/mas
    'moreutils', // Install some other useful utilities like `sponge`
    'nmap',
    'openconnect',
    'reattach-to-user-namespace',
    'homebrew/dupes/screen', // better/more recent version of screen
    'tmux',
    'todo-txt',
    'tree',
    'ttyrec',
    'vim --with-client-server --with-override-system-vi', // better, more recent vim
    'watch',
    'wget --enable-iri', // Install wget with IRI support
    'hub', // https://hub.github.com/
    'awscli',
    'direnv',
    'redis',
    'kubectl',
    'argocd',
    'svn', // we don't want it but some fonts do...
    'rbenv',
    // In order to install python 3.6 we need this, (https://github.com/jiansoung/issues-list/issues/13)
    'zlib',
    'sqlite'
    // end python 3.6 requirements
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
