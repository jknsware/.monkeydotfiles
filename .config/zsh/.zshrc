export ZSH="${HOME}/.oh-my-zsh"

# Set the update mode to reminder
zstyle ':omz:update' mode reminder

# Enable plugins
plugins=(git web-search)

# source $ZSH/oh-my-zsh.sh
# Moved .zshenv source to here for Warp support
if [ -e ${ZSH}/oh-my-zsh.sh ] ; then
  echo "  Sourcing ZSH"
  source "${ZSH}/oh-my-zsh.sh"
  source "${HOME}/.zshenv"
fi
