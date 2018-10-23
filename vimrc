" :echo "Hello, world" 注释: "开头表示注释
" ==========================一般配置=====================
let mapleader = "," 
set nocompatible " 非兼容模式
set encoding=utf-8 " 使用utf-8编码
set number " 设置行号
set history=100 " 默认指令记录100
set cursorline  " 显示当前行
set ruler " 设置右下角信息显示
set showcmd " show command
set ignorecase " Ignore 
set hlsearch " 搜索高亮
set incsearch " Enable incremental searching
set ignorecase
set smartcase
set autoindent
set smartindent
" ========================文本格式排版=====================
set tabstop=4 " 设置tab长度为4
set shiftwidth=4 " 设置自动对齐的缩进级别
filetype plugin indent on
" ======================solarized 主题配置================ 
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
