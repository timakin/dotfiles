ローカル環境構築で必要な事
========================

## GUIアプリ

- atom
- line
- slack
- chrome
- iterm2
- alfead
- dash
- 1password
- Dropbox(railsgate)

# プログラミング環境

- atom-sync-settings
  - AtomのPackeage Managerでインストール
- homebrew
- git
- XCode
- dotfiles/vimrc
- dotfiles/zshrc
- neobundle
- zsh(chshも)
- oh-my-zsh
- peco

```
https://github.com/peco/peco
```

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

- Duotone colors

```
cd ~/.vim/bundle
git clone https://github.com/atelierbram/vim-colors_duotones.git
```

- ghq

```
go get github.com/motemen/ghq
git config --global ghq.root ~/src
```

- s

```
go get -v github.com/zquestz/s
cd $GOPATH/src/github.com/zquestz/s
make
make install
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

- Atom symlink

```
ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom
```

- godef

```
https://github.com/dgryski/vim-godef
```

- ssh key

```
ssh-copy-id -i ~/.ssh/id_rsa.pub <user name>@<ip address>:
```

tig

```
brew install tig
```
