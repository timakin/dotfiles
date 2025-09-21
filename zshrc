# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/takahashiseiji/completions:"* ]]; then export FPATH="/Users/takahashiseiji/completions:$FPATH"; fi
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

export CLOUDSDK_PYTHON=/usr/bin/python3

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/takahashiseiji/.lmstudio/bin"
# End of LM Studio CLI section


. "$HOME/.local/bin/env"
