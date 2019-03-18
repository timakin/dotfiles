# Import child configs
ZSHHOME="${HOME}/dotfiles/zsh.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

# その他エイリアス
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

### replace words under current directory
function greplace() {
    find . -name ${3:-*} | xargs sed -i "" "s/$1/$2/g"
}


# shift to dotfiles dir
alias dots='cd ~/dotfiles'


