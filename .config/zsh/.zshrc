export ZSH="${HOME}/.oh-my-zsh"

# # Set the update mode to reminder
zstyle ':omz:update' mode reminder

# # Set the theme(s)
ZSH_THEME="agnoster"

# # Enable plugins
plugins=(git web-search)

# source $ZSH/oh-my-zsh.sh
if [ -e ${ZSH}/oh-my-zsh.sh ] ; then
  echo "  Sourcing ZSH"
  source "${ZSH}/oh-my-zsh.sh"
fi

# Set the terminal to only show the username
# https://catalins.tech/improve-mac-terminal
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

