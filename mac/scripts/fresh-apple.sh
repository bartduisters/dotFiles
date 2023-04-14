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
brew install --cask vscodium
# addLineToFile "alias code=codium" ~/.zprofile
brew install --cask visual-studio-code
brew install neovim

printStep 'INSTALLING NVM'
brew install nvm
addLineToFile "export NVM_DIR=~/.nvm" ~/.zprofile
addLineToFile "source $(brew --prefix nvm)/nvm.sh" ~/.zprofile
printStep 'INSTALLING NODE LTS'
nvm install --lts
nvm use --lts

printStep 'INSTALLING FTP CLIENT - CYBERDUCK'
brew install --cask cyberduck

printStep 'INSTALLING BROWSERS'
brew install --cask google-chrome
brew install --cask firefox

printStep 'INSTALLING ITERM2'
brew install --cask iterm2

printStep 'INSTALLING UTM - VIRTUALIZATION'
brew install --cask utm

printStep 'INSTALLING POSTMAN'
brew install --cask postman

printStep 'INSTALLING COMPOSER'
brew install composer

printStep 'INSTALLING ROSETTA2' #compatibility layer for Apple Silicon chips
softwareupdate --install-rosetta --agree-to-license
printStep 'INSTALLING DOCKER'
brew install --cask docker

# Install programs for non development  
printStep 'INSTALLING MEGASYNC'
brew install --cask megasync
printStep 'INSTALLING DISCORD'
brew install --cask discord
printStep 'INSTALLING TELEGRAM'
brew install --cask telegram
printStep 'INSTALLING LIBREOFFICE'
brew install --cask libreoffice
printStep 'INSTALLING SPOTIFY'
brew install --cask spotify
printStep 'INSTALLING LEDGER-LIVE'
brew install --cask ledger-live
printStep 'INSTALLING OBS'
brew install --cask obs
printStep 'INSTALLING IMAGEMAGICK'
brew install imagemagick

# Install misc.
printStep 'INSTALLING TRANSMISSION - TORRENT'
brew install --cask transmission
printStep 'INSTALLING FZF - Fuzzy Finder'
brew install fzf # Formula
$(brew --prefix)/opt/fzf/install --no-bash --no-fish --key-bindings --completion --update-rc
printStep 'INSTALLING COREUTILS'
brew install coreutils 

# Install custom font with ligatures
brew tap homebrew/cask-fonts
# arch -arm64 brew install svn # Some casks use svn to clone, monsters
brew install --cask font-fira-code

# Install warp - the 21st century terminal
brew install --cask warp

# Install OBS plugins
brew install onnxruntime # necessary for chrome key
printStep 'Install: https://github.com/royshil/obs-backgroundremoval/releases/tag/v0.3.0-beta'

printStep 'INSTALLING RAYCAST'
brew install --cask raycast

printStep 'CLEANING UP HOMEBREW'
brew cleanup

source ~/.zprofile
