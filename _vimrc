" �������Ǹ�window��gVimʹ�õ�


set encoding=utf-8
set fileencodings=utf-8,chinese,cp936,ucs-bom,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"����˵����� begin
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"����˵����� end

"���consle������� begin
language messages zh_CN.utf-8
"���consle������� end

" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" ����һ���ÿ�������
set gfn=Consolas:h11
inoremap jk <ESC>
set number

" encoding fileencoding fileencodings termencoding
" :help encoding-names

" encoding��vim�ڲ�ʹ�õı��뷽ʽ
" vim��buffer �˵��ı� ��Ϣ�ȵ�

" fileencoding vim�е�ǰ�༭���ļ����ַ����뷽ʽ
" vim�����ļ�ʱҲ�Ὣ�ļ�����Ϊ���ֱ��뷽ʽ
" ���ҽ�fileencoding����Ϊ����̽�⵽���ַ����뷽ʽ
" �����ý�Unicode���뷽ʽ�ŵ��б����ǰ�潫���������
" ��������

" termencoding vim���������ն�(����windows��console)
" ���ַ����뷽ʽ�� ���ѡ����windows�¶����ǳ��õ�
" GUIģʽ��gVim��Ч�� ����consoleģʽ��vim���Ծ���windows
" ����̨�Ĵ���ҳ


