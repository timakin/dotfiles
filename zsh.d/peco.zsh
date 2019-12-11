# peco with ag
function agp() {
    ag $@ -l | P
}

function peco-cd() {
    local n="2"
    if [ $# -eq "2" ]; then
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

# AWS Session Manager
function peco-session-manager() {
    INSTANCE_ID="$(
        aws ec2 describe-instances \
            | jq -cr '.Reservations[].Instances[]
                        | select(.State.Name == "running")
                        | .InstanceId + " (" + 
                        ( [.Tags[] | .Key + ":" + .Value]
                            | sort
                            | join(", ")) + ")"' \
            | peco \
            | cut -d' ' -f1
    )"
    if [ -z "$INSTANCE_ID" ]; then
    echo "$(date +'%Y-%m-%d %H:%M:%S %z') [ERROR] Unable to fetch any instance."
    return
    fi

    aws ssm start-session --target $INSTANCE_ID
}
alias pssm='peco-session-manager'

function peco-elasticache-redis() {
    CLUSTER_ENDPOINT="$(
        aws elasticache describe-cache-clusters --show-cache-node-info \
            | jq -cr '.CacheClusters[]
                        | select(.Engine == "redis")
                        | "ClusterID: " + .CacheClusterId + " ( Endpoint: " + 
                        ( [.CacheNodes[] |  .Endpoint.Address ]  
                            | sort
                            | join(", ")) + " )"' \
            | peco \
            | cut -d' ' -f5
    )"
    if [ -z "$CLUSTER_ENDPOINT" ]; then
    echo "$(date +'%Y-%m-%d %H:%M:%S %z') [ERROR] Unable to fetch any cluster."
    return
    fi

    redis-cli -h $CLUSTER_ENDPOINT
}
alias per='peco-elasticache-redis'

zle -N peco-select-history
bindkey '^r' peco-select-history
