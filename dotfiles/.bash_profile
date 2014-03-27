

### Added by the Heroku Toolbelt
export PATH="~/Projects/android-sdk-current/platform-tools:~/Projects/android-sdk-current/tools:/usr/local/heroku/bin:$PATH"

export PATH=${PATH}:/usr/local/share/npm/bin/

export IGS_AWS_PEM=~/Downloads/andrewettingerkey.pem
export ANDROID_SDK=/Users/ettinger/Projects/android-sdk-current/sdk/


function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

alias solr0='ssh -i ~/Downloads/andrewettingerkey.pem ubuntu@solr0.igsone.com'
alias web0='ssh -i ~/Downloads/andrewettingerkey.pem ubuntu@54.245.82.212'
alias web1='ssh -i ~/Downloads/andrewettingerkey.pem ubuntu@ec2-54-245-156-144.us-west-2.compute.amazonaws.com'
alias db0='ssh -i ~/Downloads/andrewettingerkey.pem ubuntu@db0.igsone.com'
alias start_nginx='sudo /usr/local/Cellar/nginx/1.2.4/sbin/nginx'
alias gomobile='cd ~/Projects/igs/code/mobile'

function hp() {
    local origin=$(git remote -v | grep 'push' | awk -F '[:/]' '{print $2}')
    local branch=$(git rev-parse --abbrev-ref HEAD)
    hub pull-request -b $origin:$1 -h $origin:$branch -i $2
}

alias h=history
alias g=grep
