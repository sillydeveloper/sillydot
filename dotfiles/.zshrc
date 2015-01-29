# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export EDITOR="vim"
source ~/.secrets

ZSHRC="~/.zshrc"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="candy"
DEFAULT_USER=`whoami`

alias start_nginx="sudo /usr/local/Cellar/nginx/1.2.4/sbin/nginx"

alias bets="bundle exec thin start"
alias bert="bundle exec ruby -Itest"
alias beg="bundle exec guard"
alias be="bundle exec"

alias h="history"
alias hg="history | grep"
alias l="ls -lah"
alias p="pgrep -lf"
alias i="ifconfig"
alias tr="traceroute"
alias npmig="sudo npm install -g"
alias npms="sudo npm s"

alias fix_bundle="bundle config --global path .bundle"
alias aws="/Users/$DEFAULT_USER/.local/lib/aws/bin/aws"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=30

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git osx github autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/Projects/dependencies/grails/bin:~/.rbenv/shims:~/.local/bin:$PATH:/usr/local/share/npm/bin:/usr/local/sbin
export ANDROID_SDK=/Users/$DEFAULT_USER/Projects/android-sdk
export ANDROID_HOME=/Users/$DEFAULT_USER/Projects/android-sdk
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
