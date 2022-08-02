export XDG_CONFIG_HOME="${HOME}/.config"
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

###############################################################################
# Set up a few standard directories based on:
#   https://wiki.archlinux.org/title/XDG_Base_Directory
###############################################################################

export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"


function sourcezsh () {
  local sourcefiles=()

  sourcefiles=(
    "${ZDOTDIR}"/zsh_exports
    "${ZDOTDIR}"/zsh_aliases
    "${ZDOTDIR}"/zsh_docker
    "${ZDOTDIR}"/zsh_git
    "${ZDOTDIR}"/zsh_plugins
    )

  for file in "${sourcefiles[@]}"; do
    source "${file}"
  done
}

sourcezsh

echo "  Zsh env sourced."