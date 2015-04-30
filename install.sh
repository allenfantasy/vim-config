mkdir -p bundle
git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim

# TODO: should detect if ~/.vim exists
curr=`pwd`
ln -s $curr ~/.vim
