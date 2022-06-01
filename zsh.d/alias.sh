alias ll='ls -l'
alias ls='ls -G' # Show [/*@], Enable color
alias mv='mv -i' # Comfirm overwrite
alias cp='cp -i' # Comfirm overwrite
alias diff='diff --strip-trailing-cr'
alias less='less -R' # Color escape sequences will displayed
alias cat='bat'
alias gcloudtoken='gcloud auth print-identity-token | pbcopy'
pstorm () { open -na "PhpStorm.app" --args "$@" }

### replace words under current directory
function greplace() {
    find . -name ${3:-*} | xargs sed -i "" "s/$1/$2/g"
}
# Open Keyboard Assistant from CLI
