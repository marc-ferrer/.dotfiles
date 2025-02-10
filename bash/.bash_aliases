# Git aliases
alias gs="git status"
alias glog="git --no-pager log -20 --reverse --oneline"
alias gnp="git --no-pager"

alias my_ip="ip address | grep -o \"inet 192.*/\" | awk '{ print \$2 }' | tr / ' ' | xargs"

# Vancast aliases
alias vcv-sout="AWS_PAGER="" aws cloudformation describe-stacks --output table --query "Stacks[0].Outputs" --stack-name"
alias vcv-cd="cd ~/workspace/vancast/cloud-video/main"
