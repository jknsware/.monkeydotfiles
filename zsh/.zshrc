

function sourcezsh () {
  local sourcefiles=()

  sourcefiles=(
    "${HOME}"/.monkeydotfiles/zsh/zsh_exports
    "${HOME}"/.monkeydotfiles/zsh/zsh_aliases
    "${HOME}"/.monkeydotfiles/zsh/zsh_docker
    "${HOME}"/.monkeydotfiles/zsh/zsh_git
    )

  for file in "${sourcefiles[@]}"; do
    source "${file}"
  done
}

sourcezsh