###
# Do not place configuration here.
#
# Because .bash_profile has precedence over .bashrc in Apple computers,
# this file is necessary to guard against creating a .bash_profile and
# accidentally overriding all of the configuration in .bashrc
#
# All it should do is load .bashrc
###

source "$HOME/.bashrc"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if [ -e /Users/az/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/az/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
