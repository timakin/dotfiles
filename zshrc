function profile() {
    START_TIME=`~/bin/unixnano`
		source $1
    END_TIME=`~/bin/unixnano`

    TIME=`expr ${END_TIME} - ${START_TIME}`
    SEC=`expr $TIME / 1000000000`
    USEC=`expr $TIME % 1000000000`
    echo "${SEC}.`printf '%09d' $USEC`: $1"
}


# Import child configs
ZSHHOME="${HOME}/dotfiles/zsh.d"

source $ZSHHOME/alias.sh
source $ZSHHOME/aws.zsh
source $ZSHHOME/bundle.zsh
source $ZSHHOME/color.zsh
source $ZSHHOME/editor.zsh
source $ZSHHOME/eval.zsh
source $ZSHHOME/gcloud.zsh
source $ZSHHOME/git.zsh
source $ZSHHOME/hub.zsh
source $ZSHHOME/keyboard.zsh
source $ZSHHOME/news.zsh
source $ZSHHOME/path.zsh
source $ZSHHOME/peco.zsh
source $ZSHHOME/pet.zsh
source $ZSHHOME/process.zsh
source $ZSHHOME/prompt.zsh
source $ZSHHOME/zaw.zsh
