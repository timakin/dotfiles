# Path Setting
export MANPATH=/opt/local/man:$MANPATH
export PATH=$PATH:/usr/local/bin/mysql
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export PATH=~/.local/bin:$PATH
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# 色についての設定
autoload colors
colors
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

# プロンプトの表示を変更する。
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ':(%s)%b'
zstyle ':vcs_info:*' actionformats ':(%s)%b|%a'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
PROMPT="%{${fg[yellow]}%}╭( ･ㅂ･)و [%n@%~%1(v|%F{green}%1v%f|)%{${fg[yellow]}%}]%{${reset_color}%}%b "

# 自動補完
autoload -U compinit
compinit

# コマンドラインで記号の入力を許可する
setopt nonomatch

# コマンドの履歴
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups

# rails
alias be="bundle exec"
alias r='be rails'
alias rg='rails g'
alias bi='bundle install --path vendor/bundle'
alias bu='bundle update --path vendor/bundle'
alias rsh='rails-sh'
alias rd='rails d'
alias rs='r s'
alias dbinit='rake db:migrate:reset'
alias grp='ls -a | grep'
alias rdb='r dbconsole'
alias sp='spring'
alias sps='spring rails s'
alias spc='spring rails c'
alias routing='subl config/routes.rb'
alias union='bundle exec unicorn_rails -E production -c config/unicorn.rb'

# python
alias supy="sudo python"
alias ipy='ipython'

# ruby
alias use193="rvm use ruby-1.9.3-p327"
alias use2="rvm use 2.0.0"

# gem
alias gb='gem build'
alias gi='gem install'
alias guni='gem uninstall'

# git関連のエイリアス設定
alias cam='git commit -a -m'
alias delete-merged-branches="git branch --merged | grep -v '*' | xargs -I % git branch -d %"
alias difff='git diff --color-words'
alias gad='git add . -A'
alias gbr='git branch'
alias gch='git checkout'
alias gf='git fetch'
alias gip='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gipo='git pull origin master'
alias glog='git log --pretty=short --graph'
alias gpom='git push origin master'
alias graph='git log --graph --date=short --decorate=short --pretty=format:'%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s''
alias gst='git status'
alias gsts='git status --short'
alias oneglog='git log --pretty=short --graph --oneline'
alias stt='git status -uno'

# その他エイリアス
alias best='cd ~/Desktop/BEST10-iOS/;open Best10.xcworkspace'
alias catz='cat ~/.zshrc'
alias dc='docker-compose'
alias de='cd Desktop'
alias denasakura='ssh dena@153.121.70.114'
alias ll='ls -l'
alias nginxtail='tail -f /var/log/nginx/access.log'
alias pos='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias postop='pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log stop'
alias sakura='ssh timakin@153.121.70.114'
alias sb='subl'
alias shreboot='exec ${SHELL} -l'
alias vzsh='vim ~/.zshrc'
alias ls='ls -G'                                             # Show [/*@], Enable color
alias mv='mv -i'                                             # Comfirm overwrite
alias cp='cp -i'                                             # Comfirm overwrite
alias diff='diff --strip-trailing-cr'
alias less='less -R'                                         # Color escape sequences will displayed
alias L='less'
alias P='peco'

function agp() {
    ag $@ | P
}

function vimg() {
    vim $(gof)
}

# zaw setting
source ~/zsh_plugins/zaw/zaw.zsh
bindkey '^[d' zaw-cdr
bindkey '^[g' zaw-git-branches
bindkey '^[@' zaw-gitdir
function zaw-src-gitdir () {
  _dir=$(git rev-parse --show-cdup 2>/dev/null)
  if [ $? -eq 0 ]
    then
    candidates=( $(git ls-files ${_dir} | perl -MFile::Basename -nle \
     '$a{dirname $_}++; END{delete $a{"."}; print for sort keys %a}') )
  fi
  actions=("zaw-src-gitdir-cd")
  act_descriptions=("change directory in git repos")
}
function zaw-src-gitdir-cd () {
  BUFFER="cd $1"
  zle accept-line
}
zaw-register-src -n gitdir zaw-src-gitdir

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### mongo start
alias gomongo='mongod -dbpath /usr/local/var/mongodb'

# mysql
alias startms='/usr/local/bin/mysqld'
alias mslogin='mysql -u root -p'

### docker setting
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/seiji.takahashi/.boot2docker/certs/boot2docker-vm
alias b2d='boot2docker'

### history search with peco
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

### sublime
export PATH="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin:$PATH"
