printStep() {
  echo "--- $1 ---"
}

###
# Checks if a line exists in a file.
# If it does not yet exist, it will add the line to the file.
###
addLineToFile() {
  grep -qxF $1 $2 || echo $1 >> $2
}

###
# Check if Homebrew is installed
# Not installed:
#   - Installs Homebrew
#   - Adds Homebrew to PATH
# Installed:
#   - Updates Homebrew
###
which -s brew
if [[ $? != 0 ]] ;
then
  printStep 'INSTALLING HOMEBREW'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  addLineToFile 'eval "$(/opt/homebrew/bin/brew shellenv)"' ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  printStep 'UPDATING HOMEBREW'
  brew update
fi

printStep 'UPGRADING HOMEBREW'

printStep 'TAPPING CUSTOM CASKS'
brew tap homebrew/cask

# Install programs for development

printStep 'INSTALLING VSCODIUM'
brew install vscodium
addLineToFile "alias code=codium" ~/.zprofile

printStep 'INSTALLING NVM'
brew install nvm
addLineToFile "export NVM_DIR=~/.nvm" ~/.zprofile
addLineToFile "source $(brew --prefix nvm)/nvm.sh" ~/.zprofile
printStep 'INSTALLING NODE LTS'
nvm install --lts
nvm use --lts

printStep 'INSTALLING FTP CLIENT - CYBERDUCK'
brew install cyberduck

printStep 'INSTALLING BROWSERS'
brew install google-chrome
brew install firefox


# Install programs for non development  
printStep 'INSTALLING MEGASYNC'
brew install megasync
printStep 'INSTALLING DISCORD'
brew install discord
printStep 'INSTALLING TELEGRAM'
brew install telegram
printStep 'INSTALLING LIBREOFFICE'
brew install libreoffice
printStep 'INSTALLING SPOTIFY'
brew install spotify

# Install terminal based programs
printStep 'INSTALLING TRANSMISSION - TORRENT'
brew install transmission # Formula
printStep 'INSTALLING FZF - Fuzzy Finder'
brew install fzf # Formula
$(brew --prefix)/opt/fzf/install --no-bash --no-fish --key-bindings --completion --update-rc

printStep 'CLEANING UP HOMEBREW'
brew cleanup

source ~/.zprofile
