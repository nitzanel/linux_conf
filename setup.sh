# Remove current configuration and create links to new configs
# Old configuration is backed up.
# untested
mv ~/.bashrc ~/.bashrc_backup
mv ~/.vimrc ~/.vimrc_backup
mv ~/.vim ~/.vim_backup
mv ~/.tmux.conf ~/.tmux.conf_backup
ln -s vimrc ~/.vimrc
tar -xf vim.tar vim
ln -s vim ~/.vim
ln -s bashrc ~/.bashrc
ln -s tmux.conf ~/.tmux.conf

