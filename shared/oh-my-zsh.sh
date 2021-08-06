###
# Check if oh-my-zsh is installed
# Not installed:
#   - Installs oh-my-zsh
# Installed:
#   - Do nothing
###
if [[ -z $ZSH ]] ;
then
  echo 'INSTALLING OH MY ZSH'
  /bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo 'OH MY ZSH ALREADY INSTALLED'
fi

# Oh My ZSH
echo 'LINKING GRUVBOX THEME'
rm -rf ~/.oh-my-zsh/custom/themes/gruvbox.zsh-theme
ln -s ~/Projects/dotFiles/shared/.oh-my-zsh/custom/themes/gruvbox.zsh-theme ~/.oh-my-zsh/custom/themes/gruvbox.zsh-theme
echo 'LINKING ZSHRC'
rm -rf ~/.zshrc
ln -s ~/Projects/dotFiles/shared/.oh-my-zsh/.zshrc ~/.zshrc

echo 'MANUAL STEP'
echo 'Follow the steps on: https://github.com/sbugzu/gruvbox-zsh'
