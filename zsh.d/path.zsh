export MANPATH=/opt/local/man:$MANPATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/bin/mysql
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/usr/local/bin/protoc-gen-grpc-web
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export PATH=~/.local/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin
export PATH=$PATH:/usr/local/rvm/gems/ruby-2.3.0/bin
export PATH=$PATH:$HOME/go_appengine
export PATH=$PATH:/Users/seiji.takahashi/Library/Android/sdk/platform-tools
export PATH=$PATH:$HOME/flutter/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/seiji.takahashi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/seiji.takahashi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/seiji.takahashi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/seiji.takahashi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
