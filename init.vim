" 开启真彩色
set termguicolors

" 同步系统剪贴板
set clipboard=unnamedplus

" 设置行标
set nu

" 使用jj进入normal模式
inoremap jj <Esc>`^

" 使用ctrl + hjkl切换光标所在窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 插件
call plug#begin()
Plug 'mhinz/vim-startify' "开屏
Plug 'KeitaNakamura/neodark.vim' "主题
Plug 'Yggdroot/indentLine' "缩进
Plug 'vim-airline/vim-airline' "状态栏
Plug 'vim-airline/vim-airline-themes' "airline 的主题
Plug 'preservim/nerdtree'
call plug#end()

" 使用配色主题
colorscheme neodark
" 默认开启nerdtree
autocmd VimEnter * NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
