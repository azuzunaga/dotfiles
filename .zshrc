# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
DEFAULT_USER=$USER

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:/usr/local/opt:$PATH

# look for commands in these places
# export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME=powerlevel9k/powerlevel9k

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git osx zsh-autosuggestions zsh-syntax-highlighting
)


#### powerlevel9k ####
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='009'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='237'
POWERLEVEL9K_HISTORY_BACKGROUND='230'
POWERLEVEL9K_HISTORY_FOREGROUND='237'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='237'
POWERLEVEL9K_DIR_HOME_FOREGROUND='237'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='237'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
#POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(history context dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv command_execution_time time)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='237'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='237'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='237'
POWERLEVEL9K_TIME_BACKGROUND='151'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


####              ####

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

# ~/.dircolors/themefile
#eval $(gdircolors ~/.dircolors/dircolors.test)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
source $HOME/.aliases

#iterm2 integration
source ~/.iterm2_shell_integration.zsh
