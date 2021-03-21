export MANPATH=/opt/local/man:$MANPATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/opt/homebrew/bin
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin
export PATH=$PATH:$HOME/google-cloud-sdk/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then . '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi
