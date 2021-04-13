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

- Figma

# Programming

## Editor

- XCode
- VSCode

## Development

- iTerm2
- Sequel Pro

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

- pet

```
go get github.com/knqyf263/pet
```

```
rm -rf .config/pet
cp -rf dotfiles/config/pet .config/pet
```

- bat

```
brew install bat
```
