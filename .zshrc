export LANG=ja_JP.UTF-8

# java
export JAVA_HOME=`/usr/libexec/java_home`
# hadoop
export HADOOP_CONF_DIR=/usr/local/Cellar/hadoop/1.1.2/libexec/conf
# mahout
export PATH=$PATH:$HOME/lib/mahout-distribution-0.7/bin
# mysql
export PATH=$PATH:/usr/local/bin/mysql
alias mslogin='mysql -u root -p'
# manpath
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export MANPATH=/opt/local/man:$MANPATH
# vim
alias mvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app "$@"'

source ~/.nvm/nvm.sh
nvm use v0.10.0
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir

# bundle open editor => Sublime Text
function sublg { bundle show $@ | xargs subl; }
export BUNDLER_EDITOR=subl

# 色についての設定
autoload colors
colors
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'


autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ':(%s)%b'
zstyle ':vcs_info:*' actionformats ':(%s)%b|%a'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
PROMPT="%{${fg[yellow]}%}[%n@%~%1(v|%F{green}%1v%f|)%{${fg[yellow]}%}]%{${reset_color}%}%b "



# 自動補完
autoload -U compinit
compinit

# コマンドの履歴
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups

# railsのエイリアス
alias be="bundle exec"
alias r='be rails'
alias rg='rails g'
alias bi='bundle install'
alias bu='bundle update'
alias rsh='rails-sh'
alias rd='rails d'
alias rs='r s'
alias grp='ls -a | grep'
alias rdb='r dbconsole'
alias sp='spring'
alias sps='spring rails s'
alias spc='spring rails c'
alias routing='subl config/routes.rb'

# pythonのエイリアス
alias supy="sudo python"
alias ip='ipython'

# rubyのエイリアス
alias use193="rvm use ruby-1.9.3-p327"
alias use2="rvm use 2.0.0"

# git関連のエイリアス設定
alias gst='git status'
alias gch='git checkout'
alias graph='git log --graph --date=short --decorate=short --pretty=format:'%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s''
alias stt='git status -uno'
alias difff='git diff --word-diff'
alias glog='git log --pretty=short --graph'
alias gad='git add .'
alias cam='git commit -a -m'
alias gbr='git branch'
alias gf='git fetch'
alias gpom='git push origin master'
alias delete-merged-branches='git branch --merged | grep -v '*' | xargs -I % git branch -d %'

#その他エイリアス
alias de='cd Desktop'
alias vzsh='vim ~/.zshrc'
alias pos='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias postop='pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log stop'
alias sb='subl'
alias catz='cat ~/.zshrc'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
