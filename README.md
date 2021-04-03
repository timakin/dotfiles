# ローカル環境構築で必要な事

# Browser

- Chrome

# Utility

- Alfead
- 1password
- karabiner
- magnet

# Communication

- Slack
- iterm2

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

## Editor

- XCode
- Atom
- VSCode
- Goland
- WebStorm
- Rubymine
- DataGrip

## Development

- iTerm2
- Postman
- Sequel Pro

## Language

- rbenv
- ruby
- rails
- golang

## Middleware

- mysql

## CLI

- homebrew
- git
- peco
- ghq

```
rm .gitconfig; cp dotfiles/gitconfig .gitconfig
```

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

- Zsh
  - ln -sfn $HOME/src/github.com/timakin/dotfiles/vim.d $HOME/.vim
  - oh-my-zsh
- Vim
  - dotfiles/vimrc
  - neobundle
  - vim clipboard

```
sudo port deactivate vim
sudo port install vim +clipboard
```

```
rm -rf .vim/config
cp -rf dotfiles/vim.d .vim/config
ln -s dotfiles/vimrc .vimrc
```

- gof(Fuzzy finder)

```
go get github.com/mattn/gof
```

- files(file listing)

[file めっちゃ早く一覧化する。-a オプションをつけて階層遡れる](https://github.com/mattn/files)

```
go get github.com/mattn/files
```

- pet

```
go get github.com/knqyf263/pet
```

```
rm -rf .config/pet
cp -rf dotfiles/config/pet .config/pet
```

- gtop

```
npm install gtop -g
```

- fd

```
brew install fd
```

- bat

```
brew install bat
```
