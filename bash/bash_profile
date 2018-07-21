# Other sources:

# Pathing
export PATH=~/Library/Python/3.6/bin:$PATH

#################
# History Control
#################
# Vars:
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="[%F %T] "

# Force history commit after every command:
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Append to the history file, don't overwrite it
shopt -s histappend

# AWS Command Completion
# complete -C '/usr/local/bin/aws_completer' aws
complete -C '/Users/jware/Library/Python/3.6/bin/aws_completer' aws

# iterm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Enable thefuck alias
# https://github.com/nvbn/thefuck
eval $(thefuck --alias)

# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/git/home/liquidprompt/liquidprompt

# kubectl completion
# source <(kubectl completion bash)

# Brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Source chtf for multi Terraform versions
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
    . /usr/local/share/chtf/chtf.sh 0.10.8
fi

# Source LastPass cli completion
if [[ -f /usr/local/Cellar/lastpass-cli/1.2.2/share/bash-completion/completions/lpass ]]; then
    source "/usr/local/Cellar/lastpass-cli/1.2.2/share/bash-completion/completions/lpass"
fi

# Source cht.sh completion
if [ -f /usr/local/etc/cht_completion.d/cht.sh ]; then
  . /usr/local/etc/cht_completion.d/cht.sh
fi

# explain.sh begins
# https://www.tecmint.com/explain-shell-commands-in-the-linux-shell/
explain () {
if [ "$#" -eq 0 ]; then
while read  -p "Command: " cmd; do
curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$cmd"
done
echo "Bye!"
elif [ "$#" -eq 1 ]; then
curl -Gs "https://www.mankier.com/api/explain/?cols="$(tput cols) --data-urlencode "q=$1"
else
echo "Usage"
echo "explain                  interactive mode."
echo "explain 'cmd -o | ...'   one quoted command to explain it."
fi
}

# Source .bash_aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

