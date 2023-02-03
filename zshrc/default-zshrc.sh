# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/Users/hmartin/simspace/ci/portal"
# Path to your oh-my-zsh installation.
export ZSH="/Users/hmartin/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="spaceship"

# Theme Settings
SPACESHIP_EXEC_TIME_SHOW=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_COLOR=yellow
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamp section
  user          # Username section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  ruby          # Ruby section
  golang        # Go section
  docker        # Docker section
  kubectl       # kubectl context
  jobs          # background jobs indicator
  venv          # virtualenv section
  terraform     # Terraform workspace section
  line_sep      # Line break
  char          # Prompt character
)

## autosuggest settings
ZSH_AUTOSUGGEST_STRATEGY=(completion history)
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"

# enable plugins

plugins=(
    aws
    command-not-found
    copypath
    docker
    fly
    git-extras
    gitfast
    helm
    jsontools
    kubectl
    oc
    sudo
    rake
    z
    zsh-autosuggestions
    web-search
    $DISTPLUGINS[@]
)

# paths for oh-my-zsh installation
export ZSH=${HOME}/.oh-my-zsh
export ZSH_CUSTOM=${ZSH}/custom

# install autosuggestions plugin
if ! git -C "${ZSH_CUSTOM}/plugins/zsh-autosuggestions" rev-parse &>/dev/null; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
fi

# install spaceship-prompt theme
if ! git -C "${ZSH_CUSTOM}/themes/spaceship-prompt" rev-parse &>/dev/null; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git \
        "$ZSH_CUSTOM/themes/spaceship-prompt"
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" \
        "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
fi

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"


# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"


source $ZSH/oh-my-zsh.sh

# unset a few oh-my-zsh history opts

unsetopt inc_append_history
unsetopt share_history

# enable zmv for renaming files with regex
autoload -U zmv

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# nvm install location
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh" # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Export path for kubectl krew plugin
export PATH="${PATH}:${HOME}/.krew/bin"

# Set Encode and Decode Scripts to Command
alias encode64='/Users/hmartin/scripts/encodeBase64.sh'
alias decode64='/Users/hmartin/scripts/decodeBase64.sh' 
