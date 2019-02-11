call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'vim-scripts/minibufexplorerpp'
Plug 'kien/ctrlp.vim'
" Plug 'vim-scripts/winmanager'
" Plug 'vim-scripts/taglist.vim'
Plug 'altercation/vim-colors-Solarized' "solarized
Plug 'tomasr/molokai' 
" Plug 'vim-scripts/Emmet.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/xml.vim'
" Plug 'vim-scripts/html5.vim'
Plug 'othree/html5.vim'
Plug 'vim-scripts/mycomment'
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" statusbar begin
" Plug 'vim-airline/vim-airline'
Plug 'Lokaltog/vim-powerline'
" statusbar end
Plug 'drewtempelmeyer/palenight.vim' " based on Onedark，
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
 Plug 'Raimondi/delimitMate'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" 语法高亮 检查
Plug 'sheerun/vim-polyglot'
Plug 'suan/vim-instant-markdown'
" css
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
" js
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier', { 'do': 'yarn install',
			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'Shougo/neocomplete.vim'
Plug 'spf13/vim-autoclose'
" Plug 'Valloric/YouCompleteMe'
Plug 'kien/rainbow_parentheses.vim'
Plug 'easymotion/vim-easymotion'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-surround'
Plug 'jnwhiteh/vim-golang'
" Plug 'sjl/gundo.vim' " 文件编辑历史
Plug 'vim-scripts/TaskList.vim'
call plug#end()

" :e ++enc=xxx  
" chinese是一个别名在unix中表示gb2312 在windows中表示cp936 :h encoding-names
set encoding=utf-8 
set fileencodings=utf-8,chinese,cp936,ucs-bom,latin-1
set nocompatible
set novisualbell
set noerrorbells
set shortmess=atl
" set cmdheight=2
if has("win32")
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif
"菜单乱码 begin
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8 "consle lang 

" use iabbrev to replace some code end with blank code
iabbrev adn and
iabbrev ename YoungNovice
iabbrev @@ 2306915539@qq.com
iabbrev gitee https://gitee.com/YoungNovice
iabbrev github https://github.com/YoungNovice

" 取消备份
set nobackup
set noswapfile
" ==========================一般配置=====================
let mapleader = "," 
let maplocalleader = "\\" 
set number " 设置行号
set history=1000 " 默认指令记录100
set ruler " 设置右下角信息显示
set showcmd " show command
set ignorecase " Ignore 
set hlsearch " 搜索高亮
set incsearch " Enable incremental searching
set ignorecase
set smartcase
set autoindent
set smartindent
set cursorline " 突出显示当前行
set cursorcolumn " 独处显示当前列
set showmode " 左下角显示当前vim模式
" ========================文本格式排版=====================
set tabstop=4 " 设置tab长度为4个空格 
set shiftwidth=4 " 设置自动对齐的缩进级别 将换行自动缩进设置成四个空格
set hidden " 自动隐藏没有保存的缓冲区
set guifont=Consolas:h11 " set font
set scrolloff=3 " 在光标在接近底端的时候
set helplang=cn  " use chinese help doc
set laststatus=2
set t_Co=256 " 终端默认8色 设置成256支持
set splitright
set fileformats=unix,dos,mac
" set splitbelow
filetype plugin indent on
" ======================solarized 主题配置================ 
syntax enable
syntax on
set background=dark
colorscheme gruvbox
au BufEnter * :syntax sync fromstart

" fast reloading of the .vim/vimrc
map <silent> <leader>ss :source ~/.vim/vimrc<cr>
" 在normal模式下开启编辑vimrc文件
nnoremap <leader>ev :vs $MYVIMRC<cr>
" 重读vimrc配置文件
nnoremap <leader>sv :source $MYVIMRC<cr>
" fast editing of .vimrc
map <silent> <leader>ee :e  ~/.vim/vimrc<cr>

" 最后文件关闭时自动关闭Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" 创建buffer自动创建其文件
:autocmd BufNewFile * :write
" 在保存html文件前做好缩进
:autocmd BufWritePre,BufRead  *.html :normal gg=G
" 一般来说BufRead BufNewFile是同时出现的这样读文件无论是否存在都是执行这个命令
:autocmd BufRead,BufNewFile *.html setlocal nowrap

augroup file_js
	autocmd FileType javascript setlocal nonumber " js文件没有行号
	autocmd FileType javascript :iabbrev <buffer> iff if()<left> " snippet
augroup END

augroup file_annotations " 对于不同的文件类型 我们用的注释映射是一样的
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

" 当vimrc文件被修改之后自动重新加载vimrc
" :autocmd BufWritePost vimrc :source $MYVIMRC

autocmd vimenter * NERDTree
augroup VimCSS3Syntax
	autocmd!
	autocmd FileType css setlocal iskeyword+=-
augroup END

" 映射 -删除当前行 然后粘贴到下一行
nnoremap <leader>d ddp
" 映射 -删除当前行 然后粘贴到上一行
nnoremap <leader>D ddkP
nnoremap H ^
nnoremap L $
nnoremap <leader>hh H
nnoremap <leader>l L
nnoremap <silent> <leader>h :nohlsearch<CR>

" quote by ""
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" '<,'>

" 插入模式下用jk替代 <esc>  插入模式下禁用esc
inoremap jk <esc>
inoremap <esc> <nop>
" 插入模式下光标回退一下 在敲击成对的空格时用到
inoremap <leader>a <esc>i

" 禁用方向键盘 no operation
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
" normal模式下禁用q操作 录制宏 Ex模式
nnoremap q <nop>
nnoremap Q <nop>

" Operator-Pending映射 Operator 有(d y c)
" dp=di(      cp=ci(
onoremap p i( 
" in( il( 下一个括号 配合操作使用
" cin(清除下一个小括号里面的内容并且进入插入模式
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
" 只处理markdown的标题栏
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
" 处理markdown的标题的==
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

" winManager plugin配置
" let g:winManagerWindowLayout='FileExplorer|Tagbar'
" nmap wm :WMToggle<cr>
" map <silent> <F9> :WMToggle<cr>
map <leader>tb <Esc>:Tagbar<CR>

" ctags plugin配置
set tags=tags;
set autochdir

" taglist plugin配置
let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1
" 关闭NERDTree快捷键
map <leader>e :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1 " 显示NERDTree行号
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1 " 是否显示隐藏文件
let NERDTreeWinSize=30 " 设置宽度
let g:nerdtree_tabs_open_on_console_startup=1 " 在终端启动vim时，共享NERDTree
let g:NERDTreeShowIgnoredStatus = 1
let NERDTreeIgnore=['\.pyc','\~$','\.swp'] " 忽略一下文件的显示
let NERDTreeShowBookmarks=1 " 显示书签列表
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" 缩进插件 
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '|'
let g:rehash256 = 1
highlight ColorColumn ctermbg=237 guibg=gray30
let g:airline_theme="luna"
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
 \ 'javascript': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' },
 \ 'less': { 'left': '/**', 'right': '*/' } }
let g:instant_markdown_slow = 1
" emmet 配置
let g:instant_markdown_autostart = 0
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {  'javascript.jsx' : {  'extends' : 'jsx',  },  }

" js
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
set foldmethod=syntax
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = " "
let g:javascript_conceal_underscore_arrow_function = " "
set conceallevel=1
" plug vim-jsx
let g:jsx_ext_required = 0
" prettier
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync

