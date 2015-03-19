"取消备份
set nobackup
set noswapfile

"解决中文乱码
set encoding=utf-8
set fileencodings=utf-8,chinese,gbk,latin-1,gb2312,ucs-bom,cp936
if has("win32")
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"解决consle输出乱码
language messages zh_CN.utf-8

" 状态栏配置
set laststatus=2

" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1


" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

"linux下vimrc文件修改之后自动加载
autocmd! bufwritepost .vimrc source %

"文件修改之后自动载入
set autoread

"normal模式下Ctrl+c全选并复杂到系统剪贴板，必须装有vim-gnome
nmap <C-c> gg"+yG

"visual模式下Ctrl+c复制选中内容到剪贴板
vmap <C-c> "+y

"yy直接复制到系统剪切板（For macvim）
"set clipboard=unnamed

"高亮搜索命中的文本
set hlsearch
"随着键入即时搜索
set incsearch
"搜索时忽略大小写
set ignorecase
"有一个或以上大写字母时仍大小写敏感
set smartcase

set guifont=Menlo:h14
set lines=24 columns=80

colorscheme elflord  "设置配色
set background=dark

"在状态栏显示正在输入的命令
set showcmd

"显示括号配对情况
set showmatch

":next, :make 命令之前自动保存
set autowrite

"允许使用鼠标
set mouse=a

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"设置行号
set nu

"退格键可用
set backspace=2

"退格键一次删掉4个空格
set smarttab

"缩进
set autoindent
set smartindent
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,cla

"保存文件时自动删除行尾空格或Tab
autocmd BufWritePre * :%s/\s\+$//e
"保存文件时自动删除末尾空行
autocmd BufWritePre * :%s/^$\n\+\%$//ge


"填充Tab
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround

"代码折叠 光标在缩进下方时用za命令折叠或展开
set fdm=indent
"默认展开
set foldlevel=99

"W写入只读文件
cmap W w !sudo tee >/dev/null %

"F2切换行号显示
nnoremap <F2> :set nonu!<CR>:set foldcolumn=0<CR>

"F3打开目录树
"下载NERDTree: http://www.vim.org/scripts/script.php?script_id=1658
"解压缩之后，把 plugin/NERD_tree.vim和doc/NERD_tree.txt分别拷贝到~/.vim/plugin 和 ~/.vim/doc 目录。
nmap <silent> <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$']  "不显示pyc文件

"F4显示TagList
nmap <silent> <F4> :TlistToggle<CR>
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口

"F5运行脚本
autocmd BufRead *.py nmap <F5> :!python %<CR>
autocmd BufNewFile *.py nmap <F5> :!python %<CR>

"F6编译脚本
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd BufRead *.py nmap <F6> :make<CR>
autocmd BufNewFile *.py nmap <F6> :make<CR>

"拷贝粘贴代码不破坏缩进，拷贝前按F7，结束再按F7
set pastetoggle=<F7>

"<F8> auto file pep8
autocmd BufRead *.py nmap <F8> :!autopep8 -i -a --ignore=W690,E501 %<CR>

"<F9> auto all pep8
nmap <F9> :!find . -type f -name "*.py" \| xargs autopep8 -i -a --ignore=W690,E501<CR>

"<F10> 新建标签页
map <F10> <Esc>:tabnew<CR>

"给当前单词添加引号
nnoremap w" viw<esc>a"<esc>hbi"<esc>lel
nnoremap w' viw<esc>a'<esc>hbi'<esc>lel

"显示当前路径下的文件
nnoremap gp :echo globpath('.', '*')<cr>

"在Normal Mode和Visual/Select Mode下，利用Tab键和Shift-Tab键来缩进文本
nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

"左右分割窗口Ctrl+w  +v
"上下分割窗口Ctrl+w
"关闭窗口Ctrl+w  +q

"quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"打开语法高亮
syntax enable

"开启语法检测
syntax on

"检测文件类型
filetype on

"不兼容vi
set nocompatible

"python语法高亮
"下载https://github.com/hdima/python-syntax，解压复制到~/.vim
let python_highlight_all = 1

"针对不同的文件类型采用不同的缩进格式
filetype indent on

"针对不同的文件类型加载对应的插件
filetype plugin on

"启用自动补全
filetype plugin indent on

"突出显示当前行，列
set cursorline
"set cursorcolumn

"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
set t_ti= t_te=

"代码注释
"下载nerdcommenter：https://github.com/scrooloose/nerdcommenter，doc和plugin是必须要的，放到~/.vim/对应的文件夹中
"安装：:helptags ~/.vim/doc
"shift+v+方向键选中(默认当前行)   ->  \cc  加上注释  -> \cu 解开注释

"自动补齐代码：
"下载xptemplate：http://www.vim.org/scripts/script.php?script_id=2611，解压、复制到~/.vim, C+\补齐代码结构
"下载jedi-vim:https://github.com/davidhalter/jedi-vim，pip安装jedi，解压、复制到~/.vim，点号弹出补全，Ctrl+n补全

"多行编辑
"下载https://github.com/terryma/vim-multiple-cursors，解压复制到~/.vim C+n多选
"ctrl + p 向上取消
"ctrl + x 跳过
"esc   退出

"语法检查
"同样方法，下载地址：https://github.com/scrooloose/syntastic
"和https://github.com/kevinw/pyflakes-vim

"所有复制完成后：:helptags ~/.vim/doc注册一下所有插件

let g:startify_custom_header =
      \ map(split(system('fortune | cowthink -f apt'), '\n'), '"   ". v:val') + ['','']

"Ctrl-X Ctrl-U emoji补全
silent! if emoji#available()
  let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
  let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
  let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
  let g:gitgutter_sign_modified_removed = emoji#for('collision')
endif
set completefunc=emoji#complete

" 打开文件时始终跳转到上次光标所在位置
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif
