function profile() {
  START_TIME=$(~/bin/unixnano)
  source $1
  END_TIME=$(~/bin/unixnano)

  TIME=$(expr ${END_TIME} - ${START_TIME})
  SEC=$(expr $TIME / 1000000000)
  USEC=$(expr $TIME % 1000000000)
  echo "${SEC}.$(printf '%09d' $USEC): $1"
}

# Import child configs
ZSHHOME="${HOME}/dotfiles/zsh.d"

source $ZSHHOME/alias.sh
source $ZSHHOME/color.zsh
source $ZSHHOME/eval.zsh
source $ZSHHOME/gcloud.zsh
source $ZSHHOME/git.zsh
source $ZSHHOME/path.zsh
source $ZSHHOME/peco.zsh
source $ZSHHOME/pet.zsh
source $ZSHHOME/process.zsh
source $ZSHHOME/prompt.zsh
source $ZSHHOME/zaw.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/takahashiseiji/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/takahashiseiji/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/takahashiseiji/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/takahashiseiji/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

source /Users/takahashiseiji/.docker/init-zsh.sh || true # Added by Docker Desktop

# pnpm
export PNPM_HOME="/Users/takahashiseiji/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
