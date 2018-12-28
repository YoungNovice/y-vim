" modify by YoungNovice for gVim

set helplang=cn  " use chinese help doc
set guifont=Consolas:h11 " set font
inoremap jk <ESC> 
set number
set encoding=utf-8 " :help encoding-names
set fileencodings=utf-8,chinese,cp936,ucs-bom,latin-1
if has("win32")
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif
"解决菜单乱码 begin
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8 "consle lang 
colorscheme darkblue
set tabstop=4 
set autochdir " 自动设置当前目录为正在编辑的目录
set hidden " 自动隐藏没有保存的缓冲区
set scrolloff=3 " 在光标在接近底端的时候, 自动向下滚动

"Toggle Menu and Toolbar 隐藏菜单栏和工具栏
"set guioptions-=m
"set guioptions-=T
"map <silent> <F2> :    if &guioptions =~# 'T' <bar>
"                         \set guioptions-=T <bar>
"                         \set guioptions-=m <bar>
"                         \else <Bar>
"                           \set guioptions+=T <bar>
"                           \set guioptions+=m <bar>
"                       \endif<CR>

" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
