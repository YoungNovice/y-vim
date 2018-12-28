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
"����˵����� begin
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8 "consle lang 
colorscheme darkblue
set tabstop=4 
set autochdir " �Զ����õ�ǰĿ¼Ϊ���ڱ༭��Ŀ¼
set hidden " �Զ�����û�б���Ļ�����
set scrolloff=3 " �ڹ���ڽӽ��׶˵�ʱ��, �Զ����¹���

"Toggle Menu and Toolbar ���ز˵����͹�����
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
