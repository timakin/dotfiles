# Onelogin
export AWS_DEFAULT_REGION=ap-northeast-1
export AWS_PROFILE=biwako
alias onelogin-aws-login="docker run -v $HOME:/root -i -t koid/awscli-with-onelogin onelogin-aws-login $@"
alias onelogin-biwako="onelogin-aws-login -d 32400 --config-name biwako --username seiji.takahashi@gunosy.com --profile biwako"
