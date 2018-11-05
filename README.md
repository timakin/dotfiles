ローカル環境構築で必要な事
========================

## GUIアプリ

- chrome
- line
- slack
- iterm2
- alfead
- 1password
- Dropbox(railsgate)
- magnet
- karabiner
- Postman
- Discord
- Station

# Design
- Abstract
- Craft
- InVision
- Sketch Plugins
  - Sketch Runner
  - Rename It
  - Find And Replace
- Zeplin

# Programming
- iTerm2
- XCode
- homebrew
- git
- Zsh
  - dotfiles/zshrc
- Vim
  - dotfiles/vimrc
- neobundle
- oh-my-zsh
- peco
- rails
- rbenv
- ruby
- golang
- Atom
- VSCode
- mysql
- Goland
- WebStorm
- Rubymine
- zaw

```
mkdir ~/zsh_plugins
cd zsh_plugins
git clone git://github.com/zsh-users/zaw.git
```

- vim clipboard

```
sudo port deactivate vim
sudo port install vim +clipboard
```

- gof(Fuzzy finder)

```
go get github.com/mattn/gof
```

- files(file listing)

[fileめっちゃ早く一覧化する。-aオプションをつけて階層遡れる](https://github.com/mattn/files)

```
go get github.com/mattn/files
```

- ghq

```
go get github.com/motemen/ghq
git config --global ghq.root ~/src
```

- diff-so-fancy

```
npm install -g diff-so-fancy
```

- gocode

```
go get -u github.com/nsf/gocode
```

- Nodejs(npm)

```
https://nodejs.org/en/
```

- godef

```
https://github.com/dgryski/vim-godef
```

- ssh key

```
ssh-copy-id -i ~/.ssh/id_rsa.pub <user name>@<ip address>:
```

- tig

```
brew install tig
```

- mysql

```
brew install mysql
```
