DEFAULT_USER=$USER

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:/usr/local/opt:$PATH

# look for commands in these places
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# Replace BSD utils with GNU utils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

export TERM="xterm-256color"
export PAGER=smartless

# Disable magic functions
DISABLE_MAGIC_FUNCTIONS=true

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME=powerlevel9k/powerlevel9k

# Uncomment the following line to use hyphen-insensitive completion.
# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load?
plugins=(
  git osx zsh-autosuggestions history zsh-completions zsh-syntax-highlighting
)

# Reload completions (for zsh-completions)
autoload -U compinit && compinit

#### powerlevel9k ####
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='009'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='237'
POWERLEVEL9K_HISTORY_BACKGROUND='230'
POWERLEVEL9K_HISTORY_FOREGROUND='237'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='237'
POWERLEVEL9K_DIR_HOME_FOREGROUND='237'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='237'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='141'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='237'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(history context virtualenv dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time time)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='237'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='237'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='237'
POWERLEVEL9K_TIME_BACKGROUND='151'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

### User configuration ###
source $ZSH/oh-my-zsh.sh

# Aliases
source $HOME/.aliases

# Functions
source $HOME/.functions

# iterm2 integration
source ~/.iterm2_shell_integration.zsh

# Initialize and configure fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Add NVM to PATH
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Initialize rbenv
eval "$(rbenv init -)"

# Initialize pyenv and pyenv-virtualenv
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Nix
if [ -e /Users/americozuzunaga/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/americozuzunaga/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installe

# Set up direnv
declare SRCDIR="${HOME}/src"
eval "$(direnv hook zsh)"
