# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/vedovato/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

#source ~/.oh-my-zsh/custom/themes/geometry/geometry.zsh
#PROMPT_GEOMETRY_COLORIZE_SYMBOL=TRUE
#GEOMETRY_PROMPT_PLUGINS=(virtualenv docker_machine exec_time git hg)



# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# DEFAULT_USER="vedovato"

# Loading NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Pure prompt setup
# autoload -U promptinit; promptinit
# prompt pure


autoload -U promptinit && promptinit
prompt purity


# Custom aliases
alias dev='cd ~/Projects/'
alias proj='dev'
alias htdocs='cd /Applications/MAMP/htdocs'
alias sind='dev && cd sindicond'

# - azanelli / start
alias aza='cd /Applications/MAMP/htdocs/azanelli/catalog/view/theme/azanelli'
alias azassh='ssh azanelli.com.br@azanelli-com-br.umbler.net -p 9922'
alias azanelli='aza'
# - azanelli / end

# - feathers aliases / start
alias fgapp='feathers generate app'
alias fga='feathers generate authentication'
alias fgs='feathers generate service'
alias fgh='feathers generate hook'
# - feathers aliases / end

# - android sdk path / start
export ANDROID_HOME=/Users/vedovato/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
# - android sdk path / end

# Yarn
export PATH="$PATH:`yarn global bin`"

alias t='tree'

alias gs='git status'
alias gl='git log'



# Tiny care terminal stuff
#export TTC_SAY_BOX='cat'
export TTC_REPOS='~/Projects/sindicond,~/Projects/weeknd_hackathon'
export TTC_WEATHER='Americana, Brasil'
export TTC_CELSIUS=true
export TTC_TERMINAL_TITLE=false
export TTC_GITBOT='gitlog'
export TTC_BOTS='selfcare_bot,magicrealismbot'

export TTC_CONSUMER_KEY='aOr6lG1sOrc9dwIXu919xHjSG'
export TTC_CONSUMER_SECRET='kG4cE94coKo8Hnltgz1AjIfYA84f4Hwxh0OPIq0uxJ5tQjiSkU'
export TTC_ACCESS_TOKEN='1060294436-BozA0777oMGuVMx7S8kLKRzgsWL1x1MCrrHRqU0'
export TTC_ACCESS_TOKEN_SECRET='qqLfuH3fZvQ90WxuqUxW8JV8lUwHaM4Y9uoLz3moi2fkf'
