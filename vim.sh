#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "execute pathogen#infect()" > ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "filetype plugin indent on" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "set tabstop=2" >> ~/.vimrc
echo "set shiftwidth=2" >> ~/.vimrc

git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/preservim/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/msanders/snipmate.vim.git ~/.vim/bundle/snipmate

echo "let g:airline#extensions#tabline#enabled = 1" >> ~/.vimrc
echo -e "\n \" shortcuts \n" >> ~/.vimrc
echo "nmap <C-n>	:bn<CR>" >> ~/.vimrc
echo "nmap <C-p> 	:bp<CR>" >> ~/.vimrc
echo "nmap <F3>		:TagbarToggle<CR>" >> ~/.vimrc
echo -e "\n" >> ~/.vimrc
echo "set omnifunc=syntaxcomplete#Complete" >> ~/.vimrc
echo -e "\ncolorscheme slate\nset bg=light" >> ~/.vimrc
