# My VIM Settings

This VIM settings is newest for my MacOSX,
I usually use my VIM to write some Golang, Python, Markdown, C/C++, etc.
It use vim-plug replace to the vundle to manage the plugins.
Replaced many old plugins with new plugin which are more suitable in VIM-8
And remove some plugin which I dose not usually use.

### VIM Version

VIM - Vi IMproved 8.1 (2018 May 18, compiled Oct 15 2019 10:20:59)
macOS version

### Dependences

    brew install cmake macvim pygments global cppcheck prettier
    brew unlink ctags && brew install --HEAD universal-ctags/universal-ctags/universal-ctags
    sudo pip install isort yapf flake8 autopep8 pylint

### Plugins

**use vim-plug manage plugins**： the `.vimrc` will automatic download the vim-plug

- [nerdtree](https://github.com/scrooloose/nerdtree) A tree explorer plugin for vim.
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter) Vim plugin for intensely orgasmic commenting
- [vim-airline](https://github.com/bling/vim-airline) lean & mean status/tabline for vim that's light as air
- [vim-surround](https://github.com/tpope/vim-surround) quoting/parenthesizing made simple
- [vim-startify](https://github.com/mhinz/vim-startify) A fancy start screen for Vim
- [vim-json-line-format](https://github.com/axiaoxin/vim-json-line-format) format json line
- [vim-signify](https://github.com/mhinz/vim-signify) Show a diff using Vim its sign column.
- [favorite-vim-colorscheme](https://github.com/axiaoxin/favorite-vim-colorscheme) Tomorrow night bright color scheme
- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) VIM Table Mode for instant table creation.
- [vim-go](https://github.com/fatih/vim-go) Go development plugin for Vim
- [rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim) Better Rainbow Parentheses.
- [vim-coloresque](https://github.com/gko/vim-coloresque) css/less/sass/html color preview for vim.
- [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim) Run Async Shell Commands in Vim 8.0 / NeoVim and Output to Quickfix Window.
- [vim-json-line-format](https://github.com/axiaoxin/vim-json-line-format) format json line in Vim.
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi) Multiple cursors project for vim/neovim.
- [vim-airline](https://github.com/vim-airline/vim-airline) lean & mean status/tabline for vim that's light as air.
- [LeaderF](https://github.com/Yggdroot/LeaderF) An asynchronous fuzzy finder which is used to quickly locate files, buffers,mrus, tags, etc. in large project
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) A code-completion engine for Vim.
- [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) A Vim plugin that manages your tag files.
- [gutentags_plus](https://github.com/skywind3000/gutentags_plus) The right way to use gtags with gutentags.
- [ale](https://github.com/dense-analysis/ale) Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support.
- [echodoc.vim](https://github.com/Shougo/echodoc.vim) Print documents in echo area.
- [vimwiki](https://github.com/vimwiki/vimwiki) Personal Wiki for Vim
- [vim-snippets](https://github.com/honza/vim-snippets) vim-snipmate default snippets
- [UltiSnips](https://github.com/SirVer/ultisnips) The ultimate snippet solution for Vim

### Short Keys

- change buf: `]b` `[b`
- open a new tab: `<F6>`
- change tab: `]t` `[t`
- copy (all/selected) content: `Ctrl+c`
- write RO file: `w!!`
- line number toggle: `<F2>`
- nerdtree toggle: `<F3>`
- function list: `<F4>`
- run python script: `<F5>`
- paste toggle: `<F7>`
- lint fix: `<F8>`
- wrap `"`/`'` for a word: `w"`/`w'`
- uppercase/lowercase toggle with a `_` prefix: `!`
- delete current letter and toggle uppercase/lowercase: `@`
- continue indent text to left or right on select/normal mode: `>` `<`
- switch window: `<C-HJKL>`
- resize window: `<C-UpDownLeftRightEnter>`
- close quickfix window: `\q`
- find files: `\f`
- find mru files: `\m`
- complete python code: `<C-n>`
- format json line: `<leader>wj` `<leader>pj`
- change surround: `csXY`
- del surround: `dsX`
- comment/uncomment: `\cc`/`\cu`
- table mode: `\tm`
- build gofile: `\gb`
- run gofile: `\gr`
- run go test: `\gt`
- code complete: `<c-z>`
- write vimwiki: `\ww`
- expand snips: `<c-e>`

### Features

- no backup and swap file
- correct encoding for chinese
- beautiful statusline and startify
- auto reload vimrc when it is changed
- highlight and ignorecase for search text
- support using mouse
- auto remove whitespace which at the line tail and blank line at the latest
- show content in terminal when exit the vim
- open a file at the latest change position
- auto check syntax
- one key to fix linter check
- run python script with virtualenv if there is a `$VIRTUAL_ENV` (open script with virtualenv in terminal)
- auto complete the code
- show git diff in vim
- multiple cursors for editing
- use tomorrow-night-bright color scheme
- color preview for .css files
- auto format markdown tables in table mode

### Screenshots

some pics are old, don't trust them...

default open a python file

![](http://ww1.sinaimg.cn/large/67ac78cfjw1erenwmdolwj21kw0zkdr3.jpg)

working

![](http://ww1.sinaimg.cn/large/67ac78cfjw1erenwlnhc7j21kw0zkwpe.jpg)

---

next pics come from the plugin projects

json line format(I am the author :flushed:)

![](https://github.com/axiaoxin/vim-json-line-format/raw/master/pic.gif)

startify

![](https://raw.githubusercontent.com/mhinz/vim-startify/102aa438b2d2a88e2b4e331d8ff5320eed52f0c4/startify.png)

vim-coloresque

![](https://camo.githubusercontent.com/70916a51f45b5729332803c5de303f6f1849fc50/68747470733a2f2f7261772e6769746875622e636f6d2f676f726f64696e736b69792f76696d2d636f6c6f7265737175652f6d61737465722f73637265656e2e706e67)

vim-table-mode

<a href="http://www.youtube.com/watch?v=9lVQ0VJY3ps"><img src="https://raw.github.com/axil/vim-table-mode/master/youtube.png"/></a>

### Usage

use vim-plug, just need copy `.vimrc` to your HOME path and run `:PlugInstall` in vim.
