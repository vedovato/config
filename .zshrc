# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Path to your oh-my-zsh installation.
export ZSH="/Users/vedovato/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  vi-mode
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/sbin

alias www='cd /Applications/MAMP/htdocs/'
alias htdocs=alias
alias proj='cd ~/Projects'
alias opah='cd ~/Projects/opah'

alias bp='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'

alias l='ls -la'
alias c='clear'

alias gs='git status'
# alias vim='nvim'

alias dsall='docker stop $(docker ps -q)'

function cd {
  builtin cd "$@" && ls -la
}

export BASH_SILENCE_DEPRECATION_WARNING=1

alias ibs='ssh root@45.55.47.248'

alias doss='ssh root@161.35.235.193' # Digital Ocean Sindicond Hasura SFO3
alias dosw='ssh root@142.93.63.194' # Digital Ocean Sindicond NYC1

function vim { nvim $1 }

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


echo "source /usr/local/share/instantclient/instantclient.sh"
