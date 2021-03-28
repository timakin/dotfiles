# git関連のエイリアス設定
alias g='git'
alias cam='git commit -a -m'
alias delete-merged-branches="git branch --merged | grep -v '*' | xargs -I % git branch -d %"
alias difff='git diff --color | diff-so-fancy'
alias gad='git add . -A'
alias gbr='git branch'
alias gch='git checkout'
alias gf='git fetch'
alias gip='git push origin `git rev-parse --abbrev-ref HEAD`'
alias gst='git status'

# remove file from git-history
function remove-from-history() {
    git filter-branch --index-filter `git rm -r --cached --ignore-unmatch $1` HEAD
}
