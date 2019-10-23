""""""""""""""""""""""VIM-PLUG""""""""""""""""""""
" download plug.vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize plugin system
call plug#begin('~/.vim/plugged')
" color scheme. https://github.com/axiaoxin/favorite-vim-colorscheme
Plug 'axiaoxin/favorite-vim-colorscheme'
" The fancy start screen for Vim. https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'
" Go development plugin for Vim. https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
" Better Rainbow Parentheses. https://github.com/kien/rainbow_parentheses.vim
Plug 'kien/rainbow_parentheses.vim'
" VIM Table Mode for instant table creation. https://github.com/dhruvasagar/vim-table-mode
Plug 'dhruvasagar/vim-table-mode', { 'for': ['md', 'markdown']}
" css/less/sass/html color preview for vim. https://github.com/gko/vim-coloresque
Plug 'gorodinskiy/vim-coloresque'
" Run Async Shell Commands in Vim 8.0 / NeoVim and Output to Quickfix Window. https://github.com/skywind3000/asyncrun.vim
Plug 'skywind3000/asyncrun.vim'
" Show a diff using Vim its sign column. https://github.com/mhinz/vim-signify
Plug 'mhinz/vim-signify'
" A vim plugin to display the indention levels with thin vertical lines. https://github.com/Yggdroot/indentLine
"Plug 'Yggdroot/indentLine'  " not working now
" format json line in Vim. https://github.com/axiaoxin/vim-json-line-format
Plug 'axiaoxin/vim-json-line-format', {'for': 'json'}
" Multiple cursors project for vim/neovim. https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi'
" surround.vim: quoting/parenthesizing made simple. https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'
" lean & mean status/tabline for vim that's light as air. https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" A tree explorer plugin for vim. https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'
" Vim plugin for intensely orgasmic commenting. https://github.com/scrooloose/nerdcommenter
Plug 'scrooloose/nerdcommenter'
" An asynchronous fuzzy finder which is used to quickly locate files, buffers,
" mrus, tags, etc. in large project. https://github.com/Yggdroot/LeaderF
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" A code-completion engine for Vim. (need macvim) https://github.com/ycm-core/YouCompleteMe
Plug 'ycm-core/YouCompleteMe'
" A Vim plugin that manages your tag files. https://github.com/ludovicchabant/vim-gutentags
Plug 'ludovicchabant/vim-gutentags'
" The right way to use gtags with gutentags. https://github.com/skywind3000/gutentags_plus
Plug 'skywind3000/gutentags_plus'
" Check syntax in Vim asynchronously and fix files, with Language Server
" Protocol (LSP) support. https://github.com/dense-analysis/ale
Plug 'dense-analysis/ale'
" Print documents in echo area. https://github.com/Shougo/echodoc.vim
Plug 'Shougo/echodoc.vim'
" Personal Wiki for Vim. https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'

call plug#end()

""""""""""""""""""""""BASE CONFIG"""""""""""""""""""""""
" 设置编码为utf-8
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

" 解决consle输出乱码
language messages zh_CN.utf-8

" 取消备份
set nobackup
set noswapfile
set noundofile

" 状态栏配置
set laststatus=2

" 打开语法高亮
syntax enable

" 开启语法检测
syntax on

" vimrc文件修改之后自动加载
autocmd! bufwritepost .vimrc source %

" 文件修改之后自动载入
set autoread

" yy直接复制到系统剪切板（For macvim）
set clipboard=unnamed

" 高亮搜索命中的文本
set hlsearch

" 随着键入即时搜索
set incsearch

" 搜索时忽略大小写
set ignorecase

" 有一个或以上大写字母时仍大小写敏感
set smartcase

set guifont=Menlo:h14

colorscheme Tomorrow-Night-Bright
" 使用自带配色
"colorscheme elflord
"set background=dark

" 在状态栏显示正在输入的命令
set showcmd

" 显示括号配对情况
set showmatch

" :next, :make 命令之前自动保存
set autowrite

" 允许使用鼠标
set mouse=a

" 设置行号
set nu

" 退格键可用
set backspace=2

" 退格键一次删掉4个空格
set smarttab

" 缩进
set autoindent
set smartindent

" 保存文件时自动删除行尾空格或Tab
autocmd BufWritePre * :%s/\s\+$//e

" 保存文件时自动删除末尾空行
autocmd BufWritePre * :%s/^$\n\+\%$//ge

" 填充Tab
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
" 配置go文件tab显示方式：不填充tab但tab显示为4个空格的长度
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" 代码折叠 用za命令折叠或展开
"set fdm=indent
set foldmethod=syntax
" 默认展开
set nofoldenable

" 突出显示当前行，列
"set cursorline
"set cursorcolumn

" 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
set t_ti= t_te=

" 打开文件时始终跳转到上次光标所在位置
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" 退出vim后，仍然可以undo上次编辑
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

"""""""""""""""""""""""""KEY MAPPING""""""""""""""""""""
" j k 移动行的时候光标始终在屏幕中间
nnoremap j jzz
nnoremap k kzz

" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" 映射切换tab的键位
nnoremap [t :tabp<CR>
nnoremap ]t :tabn<CR>

" normal模式下Ctrl+c全选并复制到系统剪贴板(linux必须装有vim-gnome)
nmap <C-c> gg"+yG

" visual模式下Ctrl+c复制选中内容到剪贴板
vmap <C-c> "+y

" Ctrl+v原样粘贴剪切板内容
inoremap <C-v> <ESC>"+pa

" w!!写入只读文件
cmap w!! w !sudo tee >/dev/null %

" F2切换行号显示
nnoremap <F2> :set nonu!<CR>:set foldcolumn=0<CR>

" F3打开目录树
nmap <silent> <F3> :NERDTreeToggle<CR>

" F4显示函数List
nmap <silent> <F4> :Leaderf! function --right<CR>

" F5运行当前Python脚本
if exists("$VIRTUAL_ENV")
    autocmd FileType python map <buffer> <F5> :AsyncRun $VIRTUAL_ENV'/bin/python' %:p<CR>
else
    autocmd FileType python map <buffer> <F5> :AsyncRun python %:p<CR>
endif

" <F6> 新建标签页
map <F6> <Esc>:tabnew<CR>

" <F7> 拷贝粘贴代码不破坏缩进
set pastetoggle=<F7>

" <F8> ale lint fix
nnoremap <F8> :ALEFix<CR>

" 给当前单词添加引号
nnoremap w" viw<esc>a"<esc>hbi"<esc>lel
nnoremap w' viw<esc>a'<esc>hbi'<esc>lel

" 大小写转换时自动在前面加_
nnoremap ! i_<esc>l~
" 删除当前字符并~后面的字符
nnoremap @ x~

" 在Normal Mode和Visual/Select Mode下，利用Tab键和Shift-Tab键来缩进文本
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv

" 左右分割窗口Ctrl+w +v
" 上下分割窗口Ctrl+w +s
" 关闭窗口Ctrl+w  +q

" quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" quicker window resize
nnoremap <C-Enter> <C-w>=
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-

" close quickfix windows
nnoremap <leader>q :ccl<cr>

""""""""""""""""""""""""""""""PLUGIN CONFIG""""""""""""""""""""""""""
" vim-go
let g:go_list_type = "quickfix"  " 使用quickfix显示错误信息
let g:go_fmt_command = "goimports"  " 使用goimports格式化代码并自动整理import
let g:go_highlight_types = 1 " 高亮显示type后的名称
let g:go_highlight_fields = 1 " 高亮显示结构体字段
let g:go_highlight_function_calls = 1  " 高亮显示函数名
let g:go_highlight_operators = 1    " 高亮运算符
let g:go_highlight_extra_types = 1  " 高亮其他types
let g:go_highlight_build_constraints = 1  " 高亮编译标签
" 编译golang同时运行测试
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <leader>gb :<C-u>call <SID>build_go_files()<CR>
" 运行golang
autocmd FileType go nmap <leader>gr  <Plug>(go-run)
" golang错误之间跳转
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>


" rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" vim-table-mode: markdown
let g:table_mode_corner="|"


" NerdCommenter
let g:NERDSpaceDelims=1


" NERDTREE
" 不显示的文件
let NERDTreeIgnore=['\.pyc$', '\~$']
" show nerdtree when starts up
"autocmd vimenter * NERDTree
" 退出最后一个buff时也退出nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" airline
let g:airline_section_y = '%{strftime("%H:%M")}'
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1


" AsyncRun
" automatically open quickfix window when AsyncRun command is executed
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6
" ring the bell to notify you job finished
let g:asyncrun_bell = 1
" vim-airline displaying the status of AsyncRun
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])


" gtags envvar
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'


" gutentags
" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif
" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')
" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
" 配置 ctags 的参数
"let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
"let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
"let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行
"let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']


" YouCompleteMe
" 不弹出函数原型预览窗口
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
" 不显示诊断信息
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
" 两个字符以后自动弹出的是基于符号的补全
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
" 触发语义补全
let g:ycm_key_invoke_completion = '<c-z>'
noremap <c-z> <NOP>
" 输入符号的两个字母，即可自动弹出语义补全
let g:ycm_semantic_triggers =  {
\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
\ 'cs,lua,javascript': ['re!\w{2}'],
\ }
" 编辑白名单
let g:ycm_filetype_whitelist = {
\ "c":1,
\ "cpp":1,
\ "go":1,
\ "python":1,
\ "java":1,
\ "javascript":1,
\ "perl":1,
\ "lua":1,
\ "sh":1,
\ "zsh":1,
\ }


" ALE
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
\   'python': ['pylint', 'flake8'],
\   'c': ['gcc', 'cppcheck'],
\   'cpp': ['gcc', 'cppcheck'],
\   'go': ['gofmt', 'golint'],
\ }
let b:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'python': ['yapf', 'isort'],
\ 'markdown': ['prettier'],
\ }


" echodoc
set cmdheight=2
let g:echodoc_enable_at_startup = 1
