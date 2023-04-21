# Remap ISO key left of 1 to ~ and `
rm -rf ~/.config/karabiner/karabiner.json
ln -s ~/Projects/dotFiles/mac/karabiner ~/.config/karabiner

# VSCode settings
rm -rf ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/Projects/dotFiles/mac/symlinks/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
rm -rf ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/Projects/dotFiles/mac/symlinks/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
