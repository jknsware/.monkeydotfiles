export ZSH="${HOME}/.oh-my-zsh"

# # Set the update mode to reminder
zstyle ':omz:update' mode reminder

# Set the theme(s)
# Removing due to Warp
# ZSH_THEME="agnoster"

# # Enable plugins
plugins=(git web-search)

# source $ZSH/oh-my-zsh.sh
# Moved .zshenv source to here for Warp support
if [ -e ${ZSH}/oh-my-zsh.sh ] ; then
  echo "  Sourcing ZSH"
  source "${ZSH}/oh-my-zsh.sh"
  source "${HOME}/.zshenv"
fi

# Set the terminal to only show the username
# https://catalins.tech/improve-mac-terminal
# Removing due to Warp
# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#   fi
# }

