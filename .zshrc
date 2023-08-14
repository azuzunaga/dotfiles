DEFAULT_USER=$USER

# Clear to beginning of line rather than the whole line
bindkey -e
bindkey \^U backward-kill-line

# Replace BSD utils with GNU utils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

export TERM="xterm-256color"

# Bat configuration
export PAGER='less'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BAT_THEME="ansi"

# Disable magic functions
DISABLE_MAGIC_FUNCTIONS=true

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME=powerlevel10k/powerlevel10k

# Uncomment the following line to use hyphen-insensitive completion.
# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load?
plugins=(
  git macos zsh-autosuggestions history zsh-completions zsh-syntax-highlighting
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
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\u0024%F{white} "
POWERLEVEL9K_TIME_BACKGROUND='151'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

################################# VCS #################################
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='237'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='237'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='237'
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_VCS_SHORTEN_LENGTH=57
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=60
POWERLEVEL9K_VCS_SHORTEN_STRATEGY=truncate_from_right

##################################[ dir: current directory ]##################################
# Current directory background color.
# typeset -g POWERLEVEL9K_DIR_BACKGROUND=4
# Default current directory foreground color.
typeset -g POWERLEVEL9K_DIR_FOREGROUND=254
# If directory is too long, shorten some of its segments to the shortest possible unique
# prefix. The shortened directory can be tab-completed to the original.
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_unique
# Replace removed segment suffixes with this symbol.
typeset -g POWERLEVEL9K_SHORTEN_DELIMITER=
# Color of the shortened directory segments.
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=237
# Color of the anchor directory segments. Anchor segments are never shortened. The first
# segment is always an anchor.
# typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=255
# Display anchor directory segments in bold.
typeset -g POWERLEVEL9K_DIR_ANCHOR_BOLD=true
# Don't shorten directories that contain any of these files. They are anchors.
local anchor_files=(
  .bzr
  .citc
  .git
  .hg
  .node-version
  .python-version
  .go-version
  .ruby-version
  .lua-version
  .java-version
  .perl-version
  .php-version
  .tool-version
  .shorten_folder_marker
  .svn
  .terraform
  CVS
  Cargo.toml
  composer.json
  go.mod
  package.json
  stack.yaml
)
typeset -g POWERLEVEL9K_SHORTEN_FOLDER_MARKER="(${(j:|:)anchor_files})"
# If set to "first" ("last"), remove everything before the first (last) subdirectory that contains
# files matching $POWERLEVEL9K_SHORTEN_FOLDER_MARKER. For example, when the current directory is
# /foo/bar/git_repo/nested_git_repo/baz, prompt will display git_repo/nested_git_repo/baz (first)
# or nested_git_repo/baz (last). This assumes that git_repo and nested_git_repo contain markers
# and other directories don't.
typeset -g POWERLEVEL9K_DIR_TRUNCATE_BEFORE_MARKER=false
# Don't shorten this many last directory segments. They are anchors.
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
# Shorten directory if it's longer than this even if there is space for it. The value can
# be either absolute (e.g., '80') or a percentage of terminal width (e.g, '50%'). If empty,
# directory will be shortened only when prompt doesn't fit or when other parameters demand it
# (see POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS and POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS_PCT below).
# If set to `0`, directory will always be shortened to its minimum length.
typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=80
# When `dir` segment is on the last prompt line, try to shorten it enough to leave at least this
# many columns for typing commands.
typeset -g POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS=40
# When `dir` segment is on the last prompt line, try to shorten it enough to leave at least
# COLUMNS * POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS_PCT * 0.01 columns for typing commands.
typeset -g POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS_PCT=50
# If set to true, embed a hyperlink into the directory. Useful for quickly
# opening a directory in the file manager simply by clicking the link.
# Can also be handy when the directory is shortened, as it allows you to see
# the full directory that was used in previous commands.
typeset -g POWERLEVEL9K_DIR_HYPERLINK=false

# Enable special styling for non-writable directories. See POWERLEVEL9K_LOCK_ICON and
# POWERLEVEL9K_DIR_CLASSES below.
typeset -g POWERLEVEL9K_DIR_SHOW_WRITABLE=v2

# Instant prompt mode.
#
#   - off:     Disable instant prompt. Choose this if you've tried instant prompt and found
#              it incompatible with your zsh configuration files.
#   - quiet:   Enable instant prompt and don't print warnings when detecting console output
#              during zsh initialization. Choose this if you've read and understood
#              https://github.com/romkatv/powerlevel10k/blob/master/README.md#instant-prompt.
#   - verbose: Enable instant prompt and print a warning when detecting console output during
#              zsh initialization. Choose this if you've never tried instant prompt, haven't
#              seen the warning, or if you are unsure what this all means.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

### User configuration ###
source $ZSH/oh-my-zsh.sh

# Nix
if [ -e /Users/$USER/.nix-profile/etc/profile.d/nix.sh ]; then
  . /Users/$USER/.nix-profile/etc/profile.d/nix.sh
fi # added by Nix installer

# Configure dircolors
eval $(dircolors $HOME/Programming/dotfiles/.dircolors)

# Aliases
source $HOME/.aliases

# Functions
source $HOME/.functions

# Job specific
[ -f $HOME/.aliases-work ] && source $HOME/.aliases-work

# iterm2 integration
source ~/.iterm2_shell_integration.zsh

# Initialize and configure fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_R_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# CTRL-/ to toggle small preview window to see the full command
# CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"

# Set up direnv
#declare SRCDIR="${HOME}/src"
eval "$(direnv hook zsh)"

# nix-darwin
if test -e /etc/static/bashrc; then . /etc/static/bashrc; fi

# odbc config
export ODBCSYSINI=/usr/local/etc
export ODBCINI=/usr/local/etc/odbc.ini

# Source the Nix environment.
if [[ -f "$HOME/.nix-profile/etc/profile.d/nix.sh" ]]; then
    . "$HOME/.nix-profile/etc/profile.d/nix.sh"
elif [[ -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ]]; then
    . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
fi
