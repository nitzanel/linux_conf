# Remove current configuration and create links to new configs
# Old configuration is backed up.
# untested
mv ~/.bashrc ~/.bashrc_backup 2>/dev/null
mv ~/.vimrc ~/.vimrc_backup 2>/dev/null
mv ~/.vim ~/.vim_backup 2>/dev/null
mv ~/.tmux.conf ~/.tmux.conf_backup 2>/dev/null
ln -s $PWD/vimrc ~/.vimrc
tar -xf vim.tar vim
ln -s $PWD/vim ~/.vim
ln -s $PWD/bashrc ~/.bashrc
ln -s $PWD/tmux.conf ~/.tmux.conf

