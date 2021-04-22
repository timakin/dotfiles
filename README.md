# ローカル環境構築で必要な事

- Chrome
- 1password
- karabiner
- magnet
- Slack
- Figma
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

- ssh key

```
ssh-copy-id -i ~/.ssh/id_rsa.pub <user name>@<ip address>:
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
