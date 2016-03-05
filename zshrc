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
compinit -C

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
alias sp='be spring'
alias sps='be spring rails s'
alias spc='be spring rails c'
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
alias difff='git diff --color | diff-so-fancy'
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
alias shboot='exec ${SHELL} -l'
alias vzsh='vim ~/.zshrc'
alias ls='ls -G'                                             # Show [/*@], Enable color
alias mv='mv -i'                                             # Comfirm overwrite
alias cp='cp -i'                                             # Comfirm overwrite
alias diff='diff --strip-trailing-cr'
alias less='less -R'                                         # Color escape sequences will displayed
alias L='less'
alias P='peco'

# peco with ag
function agp() {
    ag $@ | P
}

function peco-cd() {
    local n="1"
    if [ $# -eq "1" ]; then
      n=$1
    fi
    local dir="$( find . -maxdepth $n -type d | sed -e 's;\./;;' | peco )"
    if [ ! -z "$dir" ] ; then
        cd "$dir"
    fi
}
alias pcd='peco-cd'

function peco-kill() {
 kill `ps aux | peco | awk '{print $2}'`
}

function peco-kill-kill() {
 kill -KILL `ps aux | peco | awk '{print $2}'`
}
alias killP='peco-kill'
alias killP9='peco-kill-kill'

function ghq-get() {
    eval "ghq get git@github.com:$1/$2"
}
alias ggg='ghq-get'

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^g' peco-src

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

### vim and gof
function vimg() {
    vim $(gof)
}

# mysql
alias startms='/usr/local/bin/mysqld'
alias mslogin='mysql -u root -p'

### docker setting
if [ -e /Users/seiji.takahashi ] ; then
    export DOCKER_HOST=tcp://192.168.59.103:2376
    export DOCKER_TLS_VERIFY=1
    export DOCKER_CERT_PATH=/Users/seiji.takahashi/.boot2docker/certs/boot2docker-vm
elif [ -e /Users/takahashiseiji ] ; then
    eval "$(docker-machine env sacket)"
fi

alias b2d='boot2docker'

# Docker
alias d="docker"
alias dc="docker-compose"
if [ -s "/usr/local/bin/dinghy" ] ; then
  alias dm="dinghy"
  alias dm-start="dinghy start && eval \"\$(dinghy shellinit)\""
  alias dm-restart="dinghy restart && eval \"\$(dinghy shellinit)\""
  alias dm-env="eval \"\$(dinghy shellinit)\""
else
  alias dm="docker-machine"
  alias dm-start="docker-machine start default && eval \"\$(docker-machine env default)\""
  alias dm-restart="docker-machine restart default && eval \"\$(docker-machine env default)\""
  alias dm-env="eval \"\$(docker-machine env default)\""
fi

if [ -s "/usr/local/bin/docker-machine" ] ; then
  dm-env > /dev/null 2>&1
fi

alias drm='docker rm $(docker ps -a --filter "status=exited" -q)'
function drmi() {
    docker rmi $(docker images -a | awk '/^<none>/ { print $3 }')
}

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

### replace words under current directory
function greplace() {
    find . -name ${3:-*} | xargs sed -i "" "s/$1/$2/g"
}

### sublime
export PATH="/Applications/Sublime Text 3.app/Contents/SharedSupport/bin:$PATH"

# zprof bench marking
if (which zprof > /dev/null) ;then
  zprof | less
fi

# itamae-secret store value
alias itamaes='itamae-secrets set --base=./secret'

# ctags for Ruby project
alias rtags='ctags --langmap=RUBY:.rb --exclude="*.js"  --exclude=".git*" -R .'

# process listing
alias psa='ps aux | grep '

# shift to dotfiles dir
alias dots='cd ~/dotfiles'

export ERRBIT_HOST=https://sacket-errbit-staging.herokuapp.com
export ERRBIT_PROJECT_KEY=7b67a2e914b746b23f0e48713e00e838
