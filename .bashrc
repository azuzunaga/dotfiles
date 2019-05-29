### load extensions ###

source "$HOME/.git-completion.bash"
source "$HOME/.git-prompt.sh"

### ENV variables ###

# look for commands in these places
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

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

# Functions
[[ -f "$HOME/.functions" ]] && source "$HOME/.functions"

# load any local configuration
[[ -f "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
