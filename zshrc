# Path Setting
eval "$(rbenv init -)"
eval "$(direnv hook zsh)"
export EDITOR=vi
export MANPATH=/opt/local/man:$MANPATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/bin/mysql
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export PATH=~/.local/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin
export PATH=$PATH:/usr/local/rvm/gems/ruby-2.3.0/bin
export PATH=$PATH:$HOME/go_appengine
export PATH=$PATH:/Users/seiji.takahashi/Library/Android/sdk/platform-tools

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
PROMPT="%{${fg[yellow]}%}╭( ･ㅂ･)و [%~%1(v|%F{green}%1v%f|)%{${fg[yellow]}%}]%{${reset_color}%}%b "

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
alias bi='bundle install --path vendor/bundle'
alias bu='bundle update --path vendor/bundle'

# git関連のエイリアス設定
alias cam='git commit -a -m'
alias delete-merged-branches="git branch --merged | grep -v '*' | xargs -I % git branch -d %"
alias difff='git diff --color | diff-so-fancy'
alias gad='git add . -A'
alias gbr='git branch'
alias gch='git checkout'
alias gf='git fetch'
alias gip='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gst='git status'

# その他エイリアス
alias dc='docker-compose'
alias de='cd Desktop'
alias ll='ls -l'
alias sakura='ssh timakin@153.121.70.114'
alias shboot='exec ${SHELL} -l'
alias vzsh='vim ~/.zshrc'
alias ls='ls -G'                                             # Show [/*@], Enable color
alias mv='mv -i'                                             # Comfirm overwrite
alias cp='cp -i'                                             # Comfirm overwrite
alias diff='diff --strip-trailing-cr'
alias less='less -R'                                         # Color escape sequences will displayed

# peco with ag
function agp() {
    ag $@ -l | P
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
bindkey '^f' peco-src

function gopath-src () {
    local selected_dir=$(ls -ld $GOPATH/src/*/*/* | awk '{ print $9 }' | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
      BUFFER="cd ${selected_dir}"
      zle accept-line
    fi
    zle clear-screen
}
zle -N gopath-src
bindkey '^g' gopath-src

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

### docker setting
# Docker
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"

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

# port use check
function pcheck() {
    lsof -i:$1
}

# process listing
alias psa='ps aux | grep '

# shift to dotfiles dir
alias dots='cd ~/dotfiles'

# go test
alias got='go test $(go list ./... | grep -v /vendor/)'

# remove file from git-history
function remove-from-history() {
    git filter-branch --index-filter `git rm -r --cached --ignore-unmatch $1` HEAD
}

# Hub command
alias hpr="hub pull-request"
alias hbr="hub browse"

# NewsFeed
alias stockclip="open https://www.stockclip.net/"
alias gn="open https://news.google.com"
alias feedly="open https://feedly.com/"
alias news="open -n /Applications/Chrome.app/; gn; stockclip; feedly"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/seiji.takahashi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/seiji.takahashi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/seiji.takahashi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/seiji.takahashi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
