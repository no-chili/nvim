" 设置leader
let mapleader=" "

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
Plug 'tpope/vim-surround' "使用ys ds ys 实现成对的增删改操作 
Plug 'preservim/nerdtree' " 目录树 ctrl+v光标切到目录 ctrl+g切换显示
Plug 'kien/ctrlp.vim' " ctrl+p 文件快速查找
Plug 'easymotion/vim-easymotion' "ss 搜索屏幕内关键字并把光标移动到此处
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " 模糊搜索  :Files :Ag[Path]
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim' " 查找替换 :Far 目标词 替换词 路径         :Fardo执行
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()
" 使用配色主题
colorscheme neodark
" 默认开启nerdtree
nnoremap <leader>g :NERDTreeToggle<CR>
nnoremap <leader>v :NERDTreeFind<CR>
" nerdtree是最后一个窗口时自动关闭
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" ctrl+p 进行文件模糊搜素
let g:ctrlp_map = '<c-p>'
" 快速搜索
nmap ss <Plug>(easymotion-s2)
