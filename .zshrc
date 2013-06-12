# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

EDITOR="vim"

DB0ACTUAL="db0.igsone.com"
WEB0ACTUAL="54.245.82.212"
WEB1ACTUAL="ec2-54-245-156-144.us-west-2.compute.amazonaws.com"
SOLR0ACTUAL="solr0.igsone.com"
ZSHRC="~/.zshrc"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#DEFAULT_USER="ettinger"

# Example aliases
alias solr0="ssh -i ~/Downloads/andrewettingerkey.pem ubuntu@$SOLR1ACTUAL"
alias web0="ssh -i ~/Downloads/andrewettingerkey.pem ubuntu@$WEB0ACTUAL"
alias web1="ssh -i ~/Downloads/andrewettingerkey.pem ubuntu@$WEB1ACTUAL"

alias db0="ssh -i ~/Downloads/andrewettingerkey.pem ubuntu@db0.igsone.com"

alias start_nginx="sudo /usr/local/Cellar/nginx/1.2.4/sbin/nginx"

alias bets="bundle exec thin start"
alias beg="bundle exec guard"

alias h="history"
alias l="ls -lah"
alias p="pgrep -lf"
alias i="ifconfig"
alias tr="traceroute"
alias npmig="sudo npm install -g"
alias npms="sudo npm s"

alias fix_bundle="bundle config --global path .bundle"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx rails3 rails4 github autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:~/Projects/android-sdk/platform-tools:~/Projects/android-sdk/tools:/usr/local/share/npm/bin
