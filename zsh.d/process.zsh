# port use check
function pcheck() {
    lsof -i:$1
}

# process listing
alias psa='ps aux | grep '