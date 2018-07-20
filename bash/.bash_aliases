##### ea - alias for editing aliases
#
# When setting up a new aliases file, or having creating a new file.. About every time after editing an aliases file, I source it.
# This alias makes editing alias a bit easier and they are useful right away. Note if the source failed, it will not 
# echo "aliases sourced". Sub in gedit for your favorite editor, or alter for ksh, sh, etc.
alias ea='vim ~/.bash_aliases; source ~/.bash_aliases && source $HOME/.bash_aliases && echo "aliases sourced --ok."'

##### ep - alias for editing profile
alias ep='vim ~/.bash_profile; source ~/.bash_profile && source $HOME/.bash_profile && echo "profile sources --ok."'

##### ls - ls alias configured
#
# Set 'ls' to all, human readable, long format, display helpful info, and color
alias ll='ls -ahlFG'

# Set 'python' to be Python3 on cmd line
alias python=python3

# Set 'python2' to be Python2 on cmd line
alias python2=/usr/bin/python2.7

# Set 'pip' to be pip3 on cmd line
alias pip=pip3

# Set 'pip2' to be pip2 on cmd line
alias pip2='/usr/local/bin/pip'

# Set 'gc' to be gcloud on cmd line
alias gc=gcloud

# Set 'vagrant destroy --force' on cmd ling
alias vdf='vagrant destroy --force'

# Set 'sl' to Sublime
# Symlink created with "ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime"
alias sl=sublime

# Set 'fragrant' to vagrant
alias fragrant=vagrant

# Alias all the "aws-auth" scripts with "lpass"
# https://github.com/jknsware/lastpass-with-aws
alias aws-auth-security='eval "$(lpass show aws-auth-security --field Param1; lpass show aws-auth-security --field Param2)"'
alias aws-auth-shared_services='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-shared_services-arn --username)"'
alias aws-auth-prod='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-prod-arn --username)"'
alias aws-auth-staging='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-staging-arn --username)"'
alias aws-auth-preprod='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-preprod-arn --username)"'
alias aws-auth-tl-staging='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-tl-staging-arn --username)"'
alias aws-auth-tl-preprod='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-tl-preprod-arn --username)"'
alias aws-auth-tl-prod='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-tl-prod-arn --username)"'
alias aws-auth-sandbox='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-sandbox-arn --username)"'
alias aws-auth-legacy='eval "$(lpass show aws-auth-security --field Param1; lpass show hl-legacy-arn --username)"'

# Alias changing to main git repos
alias cdm='cd ~/git/hl/infrastructure-modules'
alias cdl='cd ~/git/hl/infrastructure-live'

# Alias changing directories by specifying number of levels up
function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}
alias 'cd..'='cd_up'

# Run a Docker Ubuntu container for wherever you are
function dockerUbuntu()
{
  echo "Running a Ubuntu Docker container and mounting the current directory \"$(pwd)\"..."
  docker run -it --rm -v $(pwd):/root/$(basename $(pwd)) -w /root/$(basename $(pwd)) ubuntu /bin/bash
}

# Git - Run git log with graph
alias gitgraph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# Git - Tag help
function gitTag()
{
  echo "  To add tags:"
  echo "  git tag -a v0.1.18 -m \"Adds this functionality\""
  echo "  git push origin --tags"
  echo "   "
  echo "  To delete tags:"
  echo "  git tag -d tag-name"
  echo "  git push origin :refs/tags/tag-name"
}

# Git - Remove all branches but master
alias gitBR="git branch | grep -v "master" | xargs git branch -D"

# Export GITHUB_OATH_TOKEN
export GITHUB_OAUTH_TOKEN=812a5049da0a91a8501375acf6893ed836182c83

# Cht.sh
alias cheat=/usr/local/bin/cht.sh
