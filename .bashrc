### load extensions ###

source "$HOME/.git-completion.bash"
source "$HOME/.git-prompt.sh"

# shortened prompt that includes git branch info
RED='\[\e[0;31m\]'
WHITE='\[\e[1;37m\]'
CYAN='\[\e[0;36m\]'
MAGENTA='\[\e[0;35m\]'
RESET='\[\e[0;0m\]'
export PS1="$CYAN[\#] $CYAN\W$WHITE\$(__git_ps1)$CYAN\$$RESET "

### other ###
# load aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Functions
[[ -f "$HOME/.functions" ]] && source "$HOME/.functions"

# load any local configuration
[[ -f "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Nix config
if [ -e /Users/americozuzunaga/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/americozuzunaga/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
