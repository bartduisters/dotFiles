# Remap ISO key left of 1 to ~ and `
rm -rf ~/.config/karabiner/karabiner.json
ln -s ~/Projects/dotFiles/mac/karabiner/karabiner.json ~/.config/karabiner/karabiner.json

# VSCode Extensions for VSCodium
rm -rf ~/Library/Application\ Support/VSCodium/product.json
ln -s ~/Projects/dotFiles/mac/vscodium/product.json ~/Library/Application\ Support/VSCodium/product.json
# VSCodium settings
rm -rf ~/Library/Application\ Support/VSCodium/User/settings.json
ln -s ~/Projects/dotFiles/mac/vscodium/settings.json ~/Library/Application\ Support/VSCodium/User/settings.json

