### load extensions ###

source "$HOME/.git-completion.bash"
source "$HOME/.git-prompt.sh"

### ENV variables ###

# look for commands in these places
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# make vim the default text editor
export EDITOR="nano"

# shortened prompt that includes git branch info
RED='\[\e[0;31m\]'
WHITE='\[\e[1;37m\]'
CYAN='\[\e[0;36m\]'
MAGENTA='\[\e[0;35m\]'
RESET='\[\e[0m\]'
export PS1="$CYAN[\#] $CYAN\W$WHITE\$(__git_ps1)$CYAN\$$RESET "

### other ###

# initialize rbenv
eval "$(rbenv init -)"

# initialize node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# load aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# load any local configuration
[[ -f "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"