# Remap ISO key left of 1 to ~ and `
rm -rf ~/.config/karabiner/karabiner.json
ln -s ~/Projects/dotFiles/mac/karabiner/karabiner.json ~/.config/karabiner/karabiner.json

# VSCode Extensions for VSCodium
rm -rf ~/Library/Application\ Support/VSCodium/product.json
ln -s ~/Projects/dotFiles/mac/symlinks/vscode/product.json ~/Library/Application\ Support/VSCodium/product.json
# VSCodium settings
rm -rf ~/Library/Application\ Support/VSCodium/User/settings.json
ln -s ~/Projects/dotFiles/mac/symlinks/vscode/settings.json ~/Library/Application\ Support/VSCodium/User/settings.json

# VSCode settings
rm -rf ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/Projects/dotFiles/mac/symlinks/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
rm -rf ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/Projects/dotFiles/mac/symlinks/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# NeoVim
rm -rf ~/.config/nvim
ln -s ~/Projects/dotFiles/mac/symlinks/nvim ~/.config/nvim
