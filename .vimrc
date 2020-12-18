""""""""""""""""""""""VIM-PLUG""""""""""""""""""""
" download plug.vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize plugin system
call plug#begin('~/.vim/plugged')
" A tree explorer plugin for vim. https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'
" Vim plugin for intensely orgasmic commenting. https://github.com/scrooloose/nerdcommenter
Plug 'scrooloose/nerdcommenter'
" lean & mean status/tabline for vim that's light as air. https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" color scheme. https://github.com/axiaoxin/vim-colorschemes
Plug 'axiaoxin/vim-colorschemes'
" Pick the VIM colorscheme that you are destined to be with.:)  https://github.com/sunuslee/vim-plugin-random-colorscheme-picker
Plug 'sunuslee/vim-plugin-random-colorscheme-picker'
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
" Personal Wiki for Vim. https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'
" The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!  https://github.com/SirVer/ultisnips
Plug 'SirVer/ultisnips'
" vim-snipmate default snippets (Previously snipmate-snippets) https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'
" Insert or delete brackets, parens, quotes in pair.  https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'
" A calendar application for Vim  https://github.com/itchyny/calendar.vim
Plug 'itchyny/calendar.vim'
" Improved nginx vim plugin (incl. syntax highlighting)
Plug 'chr4/nginx.vim'
" Instant Markdown previews from VIm!  https://github.com/suan/vim-instant-markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

call plug#end()

""""""""""""""""""""""BASE CONFIG"""""""""""""""""""""""
" 设置编码为 utf-8
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

" 解决 console 输出乱码
language messages zh_CN.utf-8

" 取消备份
set nobackup
set noswapfile

" 状态栏配置
set laststatus=2

" 打开语法高亮
syntax enable

" 开启语法检测
syntax on

" vimrc 文件修改之后自动加载
autocmd! bufwritepost .vimrc source %

" 文件修改之后自动载入
set autoread


" 高亮搜索命中的文本
set hlsearch

" 随着键入即时搜索
set incsearch

" 搜索时忽略大小写
set ignorecase

" 有一个或以上大写字母时仍大小写敏感
set smartcase

set guifont=Menlo:h14

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

" 退格键一次删掉 4 个空格
set smarttab

" 缩进
set autoindent
set smartindent

" 保存文件时自动删除行尾空格或 Tab
autocmd BufWritePre * :%s/\s\+$//e

" 保存文件时自动删除末尾空行
autocmd BufWritePre * :%s/^$\n\+\%$//ge

" 保存文件时自动对中文中的英文单词和数字添加空格
" autocmd BufWritePre * silent! :%s/[^\x00-\xff]\zs\ze\w\|\w\zs\ze[^\x00-\xff]/ /g

" 填充 Tab
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround
" 配置 go 文件 tab 显示方式：不填充 tab 但 tab 显示为 4 个空格的长度
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" 代码折叠 用 za 命令折叠或展开
set foldmethod=indent
" 默认展开
set nofoldenable
" 有6种方法来选定折叠：
" 1    manual          手工定义折叠
" 2    indent           更多的缩进表示更高级别的折叠
" 3    expr              用表达式来定义折叠
" 4    syntax           用语法高亮来定义折叠
" 5    diff                对没有更改的文本进行折叠
" 6    marker           对文中的标志折叠


" 突出显示当前行，列
set cursorline
"set cursorcolumn

" 设置 退出 vim 后，内容显示在终端屏幕, 可以用于查看和复制
set t_ti= t_te=

" 打开文件时始终跳转到上次光标所在位置
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" 退出 vim 后，仍然可以 undo 上次编辑
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

"""""""""""""""""""""""""KEY MAPPING""""""""""""""""""""
" j k 移动行的时候光标始终在屏幕中间
nnoremap j jzz
nnoremap k kzz

" 映射切换 buffer 的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" 映射切换 tab 的键位
nnoremap [t :tabp<CR>
nnoremap ]t :tabn<CR>

" normal 模式下 Ctrl+c 全选并复制到系统剪贴板(linux 必须装有 vim-gnome)
nmap <C-c> gg"+yG

" visual 模式下 Ctrl+c 复制选中内容到剪贴板
vmap <C-c> "+y

" Ctrl+v 原样粘贴剪切板内容
inoremap <C-v> <ESC>"+pa

" w!!写入只读文件
cmap w!! w !sudo tee >/dev/null %

" F2 切换行号显示
nnoremap <F2> :set nonu!<CR>:set foldcolumn=0<CR>

" F3 打开目录树
nmap <silent> <F3> :NERDTreeToggle<CR>

" F4 显示函数 List
nmap <silent> <F4> :Leaderf! function --right<CR>

" F5 运行当前 Python 脚本
if exists("$VIRTUAL_ENV")
    autocmd FileType python map <buffer> <F5> :AsyncRun $VIRTUAL_ENV'/bin/python' %:p<CR>
else
    autocmd FileType python map <buffer> <F5> :AsyncRun python %:p<CR>
endif

" <F6> 新建标签页
map <F6> <Esc>:tabnew<CR>

" <F7>

" <F8> ale lint fix
nnoremap <F8> :ALEFix<CR>

" <F9> format json
nnoremap <F9> :%!python -m json.tool<CR>

" <F10> 中文中夹杂的英文和数字添加空格(注意\\| " 在 map 里面需要转义，直接执行使用\|)
nnoremap <F10> :%s/[^\x00-\xff]\zs\ze\w\\|\w\zs\ze[^\x00-\xff]/ /g<CR>

" 给当前单词添加引号
nnoremap w" viw<esc>a"<esc>hbi"<esc>lel
nnoremap w' viw<esc>a'<esc>hbi'<esc>lel

" 大小写转换并自动在前面加 _ （用于 abc`D`ef -> abc_def）
nnoremap ! i_<esc>l~
" 删除当前字符并对后面的字符进行大小写转换 （用于 abc`_`def -> abcDef）
nnoremap @ x~

" 在 Normal Mode 和 Visual/Select Mode 下，利用 > 键和 < 键来缩进文本
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv

" quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" quicker window resize
nnoremap <C-S-Left> <C-w><
nnoremap <C-S-Right> <C-w>>
nnoremap <C-S-Up> <C-w>+
nnoremap <C-S-Down> <C-w>-

" VIM 窗口操作命令：
"
" 左右分割窗口 Ctrl+w +v
" 上下分割窗口 Ctrl+w +s
"
" 关闭窗口 Ctrl+w  +q
"
" 光标在所有窗口间按顺序移动 Ctrl+w +w
" 光标移动到左边窗口 Ctrl+w +h
" 光标移动到下面窗口 Ctrl+w +j
" 光标移动到上面窗口 Ctrl+w +k
" 光标移动到右面窗口 Ctrl+w +l
" 光标移动到最左上角的窗口 Ctrl+w +t
" 光标移动到最右下角的窗口 Ctrl+w +b
" 光标移动到上一次访问的窗口 Ctrl+w +p
"
" 交换窗口位置 Ctrl+w +r     Ctrl+w +R     Ctrl+w +x
"
" 交换窗口位置并还原大小 Ctrl+w +H    Ctrl+w +J    Ctrl+w +K    Ctrl+w +L
"
" 将所有窗口调整到相同大小 Ctrl+w +=
" 将当前窗口最大化 Ctrl+w +|
" 将当前窗口覆盖全部只剩一个窗口 Ctrl+w +T

" close quickfix windows
nnoremap <leader>q :ccl<cr>

""""""""""""""""""""""""""""""PLUGIN CONFIG""""""""""""""""""""""""""
" Leaderf
nnoremap <leader>m :LeaderfMru<CR>


" vim-go
let g:go_test_show_name = 1
let g:go_list_type = "quickfix"  " 使用 quickfix 显示错误信息
let g:go_fmt_command = "goimports"  " 使用 goimports 格式化代码并自动整理 import
let g:go_highlight_types = 1 " 高亮显示 type 后的名称
let g:go_highlight_fields = 1 " 高亮显示结构体字段
let g:go_highlight_function_calls = 1  " 高亮显示函数名
let g:go_highlight_operators = 1    " 高亮运算符
let g:go_highlight_extra_types = 1  " 高亮其他 types
let g:go_highlight_build_constraints = 1  " 高亮编译标签
" 编译 golang 同时运行测试
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
" 运行 golang
autocmd FileType go nmap <leader>gr  <Plug>(go-run)
autocmd FileType go nmap <leader>gt  :GoTest<cr>
autocmd FileType go nmap <leader>r  :GoReferrers<cr>
" golang 错误之间跳转
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>

autocmd BufWritePost *.go !gofmt -s -w %


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
" 退出最后一个 buff 时也退出 nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" airline
let g:airline_section_y = '%{strftime("%H:%M")}'
" 开启 tabline
let g:airline#extensions#tabline#enabled = 1
" tabline 中当前 buffer 两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline 中未激活 buffer 两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline 中 buffer 显示编号
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
" 打印日志
"let g:gutentags_trace = 1
" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', 'go.mod', 'requirements.txt']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('gtags-cscope') && executable('gtags')
    let g:gutentags_modules += ['gtags_cscope']
endif
if executable('ctags')
    let g:gutentags_modules += ['ctags']
endif
" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')
" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']


" YouCompleteMe
" 不弹出函数原型预览窗口
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
" 显示诊断信息
let g:ycm_show_diagnostics_ui = 1
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
autocmd FileType python nmap gd :YcmCompleter GoToDefinitionElseDeclaration<cr>


" ALE
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
\   'python': ['pylint', 'flake8'],
\   'c': ['gcc', 'cppcheck'],
\   'cpp': ['gcc', 'cppcheck'],
\   'go': ['gofmt', 'golint'],
\   'vimwiki': ['markdownlint'],
\   'markdown': ['markdownlint'],
\ }
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'python': ['yapf', 'isort'],
\ 'html': [],
\ 'vimwiki': ['prettier'],
\ 'markdown': ['prettier'],
\ }
let g:ale_fix_on_save = 1


" utilsnips
let g:UltiSnipsExpandTrigger = "<c-e>"

" random-colorscheme-picker
let g:colorscheme_user_path = '~/.vim/plugged/vim-colorschemes/colors'
" change color scheme
nnoremap <leader>c :CSnext<cr>

" vim-instant-markdown
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_port = 10086
