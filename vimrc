" 注释: "开头表示注释
:echo ">^.^< 今天也是充满希望的一天"
" 取消备份
" set nobackup
" set noswapfile
" ==========================一般配置=====================
let mapleader = "," 
set nocompatible " 非兼容模式
set encoding=utf-8 " 使用utf-8编码
set number " 设置行号
set history=100 " 默认指令记录100
set ruler " 设置右下角信息显示
set showcmd " show command
set ignorecase " Ignore 
set hlsearch " 搜索高亮
set incsearch " Enable incremental searching
set ignorecase
set smartcase
set autoindent
set smartindent
" set cursorline " 突出显示当前行
set showmode " 左下角显示当前vim模式
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
" 在normal模式下开启编辑vimrc文件
nnoremap <leader>ev :vs $MYVIMRC<cr>
" 重读vimrc配置文件
nnoremap <leader>sv :source $MYVIMRC<cr>
" fast editing of .vimrc
map <silent> <leader>ee :e  ~/.vim/vimrc<cr>
" when .vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim/vimrc


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" call vundle#begin()
" Plugin 'gmarik/Vundle.vim'

" ================ Add all your plugins here

" ================ all of your Plugins must be added before the following line 
" call vundle#end()
"
"
" 映射 -删除当前行 然后粘贴到下一行
nnoremap <leader>d ddp
" 映射 -删除当前行 然后粘贴到上一行
nnoremap <leader>du ddkP
" quote by ""
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" '<,'>

" map noremap unmap --prefix n v i
" map nmap vmap imap 是分别在all normal visual insert模式下的映射
" noremap nnoremap vnoremap vnoremap 非递归映射
" *map会产生递归问题 用*noremap处理
" unmap nunmap ....删除某个映射

" 增加缩写
iabbrev adn and
iabbrev @@ 514565376@qq.com
iabbrev github http://github.com/YoungNovice

" 插入模式下用jk替代 <esc>
inoremap jk <esc>
" 插入模式下禁用esc
inoremap <esc> <nop>
" 插入模式下光标回退一下 在敲击成对的空格时用到
inoremap <leader>a <esc>i

" 禁用方向键盘
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
