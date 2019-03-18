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
