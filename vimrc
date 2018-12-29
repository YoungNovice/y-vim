" 注释: "开头表示注释
" :echo ">^.^< 今天也是充满希望的一天"
" 取消备份
" set nobackup
" set noswapfile
" ==========================一般配置=====================
let mapleader = "," 
let maplocalleader = "\\" 
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
syntax on
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
:autocmd BufWritePost vimrc :source $MYVIMRC


" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
" 移除vundle
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" ================ Add all your plugins here
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'kien/ctrlp.vim'
" ================ all of your Plugins must be added before the following line 
" call vundle#end()

" vim-plug replace vundle
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/winmanager'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/visualMarks.vim'
call plug#end()

" 映射 -删除当前行 然后粘贴到下一行
nnoremap <leader>d ddp
" 映射 -删除当前行 然后粘贴到上一行
nnoremap <leader>du ddkP
nnoremap H ^
nnoremap L $
nnoremap <leader>h H
nnoremap <leader>l L

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

" 禁用方向键盘 no operation
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>
" normal模式下禁用q操作 录制宏 Ex模式
nnoremap q <nop>
" nnoremap Q <nop>

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

" 状态栏设置
"statusline                                                                                                                                
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "文件路径
set statusline+=%2*\ %y\                                  "文件类型
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "编码1
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "编码2
set statusline+=%4*\ %{&ff}\                              "文件系统(dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "语言 & 是否高亮，H表示高亮?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "光标所在行号/总行数 (百分比)
set statusline+=%9*\ col:%03c\                            "光标所在列
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Read only? Top/bottom
function! HighlightSearch()
  if &hls
	return 'H'
  else
	return ''
  endif
endfunction
hi User1 ctermfg=white  ctermbg=darkred
hi User2 ctermfg=blue  ctermbg=58
hi User3 ctermfg=white  ctermbg=100
hi User4 ctermfg=darkred  ctermbg=95
hi User5 ctermfg=darkred  ctermbg=77
hi User7 ctermfg=darkred  ctermbg=blue  cterm=bold
hi User8 ctermfg=231  ctermbg=blue
" hi User9 ctermfg=#ffffff  ctermbg=#810085
hi User0 ctermfg=yellow  ctermbg=138

" 总是显示状态栏
set laststatus=2

" :e ++enc=xxx 
" chinese在unix中表示gb2312 在windows中表示cp936
set fileencodings=utf-8,cp936,latin1



" winManager plugin配置
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
map <silent> <F9> :WMToggle<cr>

" ctags plugin配置
set tags=tags;
set autochdir

" taglist plugin配置
let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1
" 关闭NERDTree快捷键
map <leader>t :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=21
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
 " 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
 " 显示书签列表
let NERDTreeShowBookmarks=1

