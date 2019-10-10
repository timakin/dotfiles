# Import child configs
ZSHHOME="${HOME}/dotfiles/zsh.d"

# Onelogin
alias onelogin-aws-login="docker run -v $HOME:/root -i -t koid/awscli-with-onelogin onelogin-aws-login $@"
export AWS_DEFAULT_REGION=ap-northeast-1
export AWS_PROFILE=biwako

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi
