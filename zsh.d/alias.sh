# その他エイリアス
alias de='cd Desktop'
alias ll='ls -l'
alias shboot='exec ${SHELL} -l'
alias vzsh='vim ~/.zshrc'
alias ls='ls -G'                                             # Show [/*@], Enable color
alias mv='mv -i'                                             # Comfirm overwrite
alias cp='cp -i'                                             # Comfirm overwrite
alias diff='diff --strip-trailing-cr'
alias less='less -R'                                         # Color escape sequences will displayed

# Onelogin
alias onelogin-aws-login="docker run -v $HOME:/root -i -t koid/awscli-with-onelogin onelogin-aws-login $@"
alias aws="docker run -v $HOME:/root koid/awscli-with-onelogin aws $@"


### replace words under current directory
function greplace() {
    find . -name ${3:-*} | xargs sed -i "" "s/$1/$2/g"
}

# shift to dotfiles dir
alias dots='cd ~/dotfiles'
