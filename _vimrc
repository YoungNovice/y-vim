" 此配置是给window下gVim使用的


set encoding=utf-8
set fileencodings=utf-8,chinese,cp936,ucs-bom,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解决菜单乱码 begin
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决菜单乱码 end

"解决consle输出乱码 begin
language messages zh_CN.utf-8
"解决consle输出乱码 end

" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" 设置一个好看的字体
set gfn=Consolas:h11
inoremap jk <ESC>
set number

" encoding fileencoding fileencodings termencoding
" :help encoding-names

" encoding是vim内部使用的编码方式
" vim的buffer 菜单文本 消息等等

" fileencoding vim中当前编辑的文件的字符编码方式
" vim保存文件时也会将文件保存为这种编码方式
" 并且将fileencoding设置为最终探测到的字符编码方式
" 因此最好将Unicode编码方式放到列表的最前面将拉丁语编码
" 放在最后边

" termencoding vim所工作的终端(或者windows的console)
" 的字符编码方式， 这个选项在windows下对我们常用的
" GUI模式的gVim无效， 而对console模式的vim而言就是windows
" 控制台的代码页


