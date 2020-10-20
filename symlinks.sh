rm -rf ~/.zshrc
ln -s ~/Projects/dotFiles/.zshrc ~/.zshrc

rm -rf ~/.tmux.conf
ln -s ~/Projects/dotFiles/.tmux.conf ~/.tmux.conf

rm -rf ~/.oh-my-zsh/custom/themes/gruvbox.zsh-theme
ln -s ~/Projects/dotFiles/.oh-my-zsh/custom/themes/gruvbox.zsh-theme ~/.oh-my-zsh/custom/themes/gruvbox.zsh-theme

rm -rf ~/.config/alacritty/alacritty.yml
ln -s ~/Projects/dotFiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

rm -rf ~/.config/coc/extensions/package.json
ln -s ~/Projects/dotFiles/.config/coc/extensions/package.json ~/.config/coc/extensions/package.json

rm -rf ~/.config/i3/config
ln -s ~/Projects/dotFiles/.config/i3/config ~/.config/i3/config

rm -rf ~/.config/nvim/init.vim
rm -rf ~/.config/nvim/coc-settings.json
ln -s ~/Projects/dotFiles/.config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/Projects/dotFiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

rm -rf ~/.config/nvim/after
mkdir ~/.config/nvim/after
mkdir ~/.config/nvim/after/plugin
ln -s ~/Projects/dotFiles/.config/nvim/after/plugin/coc.vim ~/.config/nvim/after/plugin/coc.vim
ln -s ~/Projects/dotFiles/.config/nvim/after/plugin/markdown-preview.vim ~/.config/nvim/after/plugin/markdown-preview.vim
ln -s ~/Projects/dotFiles/.config/nvim/after/plugin/yats.vim ~/.config/nvim/after/plugin/yats.vim
