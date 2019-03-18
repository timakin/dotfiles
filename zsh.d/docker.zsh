# Docker Alias
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
