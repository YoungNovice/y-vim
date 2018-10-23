set nocompatible " Set mapleader
let mapleader = "," 
set number " 设置行号
set history=1000 " Save 1000 item in history
set ruler " 设置右下角信息显示
set showcmd " show command
set ignorecase " Ignore 
set hlsearch " 搜索高亮
set incsearch " Enable incremental searching
set ignorecase
set smartcase
set autoindent
set smartindent

" solarized 主题配置
syntax enable
set background=dark
colorscheme solarized

" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" fast reloading of the .vim/vimrc
map <silent> <leader>ss :source ~/.vim/vimrc<cr>

" fast editing of .vimrc
map <silent> <leader>ee :e  ~/.vim/vimrc<cr>

" when .vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim/vimrc

