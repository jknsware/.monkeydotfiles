#!/bin/bash

echo "INFO: Backing up files"

# Backup any existing files
mkdir -v ~/.monkeydotfiles/backup

mv -fv /usr/loca/bin/aws-auth ~/.monkeydotfiles/backup/
mv -fv ~/.bash_profile ~/.monkeydotfiles/backup/
mv -fv ~/.bashrc ~/.monkeydotfiles/backup/
mv -fv ~/.git-autocompletion.sh ~/.monkeydotfiles/backup/
mv -fv ~/.gitattributes ~/.monkeydotfiles/backup/
mv -fv ~/.gitconfig ~/.monkeydotfiles/backup/
mv -fv ~/.config/liquidprompt ~/.monkeydotfiles/backup/
mv -fv ~/.lpass/username ~/.monkeydotfiles/backup/
mv -fv ~/.ssh ~/.monkeydotfiles/backup/

echo
echo "INFO: Symlinking environment"

# Symlink in the new dotfiles
ln -fsv ~/.monkeydotfiles/aws-auth/aws-auth /usr/local/bin/aws-auth
ln -fsv ~/.monkeydotfiles/bash/bash_profile ~/.bash_profile
ln -fsv ~/.monkeydotfiles/git ~/.git
ln -fsv ~/.monkeydotfiles/git/gitconfig ~/.gitconfig
ln -fsv ~/.monkeydotfiles/liquidprompt/liquidprompt ~/.config/liquidprompt
ln -fsv ~/.monkeydotfiles/lpass/username ~/.lpass/username
ln -fsv ~/.monkeydotfiles/ssh ~/.ssh

if [ -d ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimeLinter ] ; then
	mkdir -v ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimeLinter
fi

ln -fsv ~/.monkeydotfiles/sublime/Monokai\ \(SL\).tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimeLinter/Monokai\ \(SL\).tmTheme
ln -fsv ~/.monkeydotfiles/sublime/Anaconda.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Anaconda.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -fsv ~/.monkeydotfiles/sublime/Git\ Commit.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Git\ Commit.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/JSON.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/JSON.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/Markdown\ Extended.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Markdown\ Extended.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/Markdown.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Markdown.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/Python.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Python.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/SBSCompare.tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SBSCompare.tmTheme
ln -fsv ~/.monkeydotfiles/sublime/SBSCompareScheme.sublime-color-scheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SBSCompareScheme.sublime-color-scheme
ln -fsv ~/.monkeydotfiles/sublime/SBSCompareTheme.tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SBSCompareTheme.tmTheme
ln -fsv ~/.monkeydotfiles/sublime/SublimeLinter.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimeLinter.sublime-settings
ln -fsv ~/.monkeydotfiles/sublime/Terraform.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Terraform.sublime-settings

echo
echo "INFO: Sourcing .bash_profile"
source ~/.bash_profile
