# y-vim
a copy of the original vim configuration

### how to install 

##### for unix 
* cd ~
* git clone "git-repo" .vim
* into vim execute :PlugInstall

#### for window
not support yet

### core config ~.vim/vimrc
* use vim-plug to manage vim plugin

### ideavim config ~/.ideavimrc
可以配置idea独有的action
   > 通过 :actionlist查看支持的action idea是由很多的action的所以这个很有用
   > reload配置  :source ~/.ideavimrc(c:\Users\<yourName>\.ideavimrc)
   > nnoremap <C-r> :action Redo<CR>

### 资料 reference
* Practical.Vim.pdf 强烈推荐
* learnvimscriptthehardway.pdf vim脚本学习 还可以 看完之后就可以轻松的读懂配置和插件了
* img下有几张图片， 多看看有好处

### plugged 
插件存放的地方, rtp
