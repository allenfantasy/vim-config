mkdir -p bundle
git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim

curr=`pwd`
[ ! -e "$HOME/.vim" ] && ln -s $curr $HOME/.vim
[ ! -e "$HOME/.vimrc" ] && ln -s $curr/vimrc $HOME/.vimrc
