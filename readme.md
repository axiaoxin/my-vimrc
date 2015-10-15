My VIM Settings
===============
This project is extracted from [my dot files](https://github.com/axiaoxin/mac-dotfiles)

This VIM settings is for Python programmers on Mac OSX. It use Vundle to manage the plugins.

###VIM Version

VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Apr 13 2015 00:22:48)

MacOS X (unix) version

###Dependences

    brew install vim git npm ctags
    sudo npm -g install instant-markdown-d jshint
    sudo pip install isort jedi yapf flake8 virtualenvwrapper

[Maybe I have forgot some other dependences :( ]

###Plugins

- [nerdtree](https://github.com/scrooloose/nerdtree) A tree explorer plugin for vim.
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter) Vim plugin for intensely orgasmic commenting
- [tagbar](https://github.com/majutsushi/tagbar) Vim plugin that displays tags in a window(ctags is needed)
- [ctrlp](https://github.com/kien/ctrlp.vim) Fuzzy file, buffer, mru, tag, etc finder.
- [vim-airline](https://github.com/bling/vim-airline) lean & mean status/tabline for vim that's light as air
- [vim-snippets](https://github.com/honza/vim-snippets) vim-snipmate default snippets
- [UltiSnips](https://github.com/SirVer/ultisnips) The ultimate snippet solution for Vim
- [vim-surround](https://github.com/tpope/vim-surround) quoting/parenthesizing made simple
- [vim-instant-markdown](https://github.com/suan/vim-instant-markdown) Instant Markdown previews from VIM!
- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) True Sublime Text style multiple selections for Vim
- [vim-startify](https://github.com/mhinz/vim-startify) A fancy start screen for Vim
- [vim-emoji](https://github.com/junegunn/vim-emoji) Named Emoji in Vim
- [vim-json-line-format](https://github.com/axiaoxin/vim-json-line-format) format json line
- [jedi-vim](https://github.com/davidhalter/jedi-vim) Using the jedi autocompletion library for VIM.
- [vim-flake8](https://github.com/nvie/vim-flake8) Flake8 plugin for Vim
- [indentLine](https://github.com/Yggdroot/indentLine) A vim plugin to display the indention levels with thin vertical lines
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.
- [favorite-vim-colorscheme](https://github.com/axiaoxin/favorite-vim-colorscheme) Tomorrow night bright color scheme
- [vim-node](https://github.com/moll/vim-node) Tools and environment to make Vim superb for developing with Node.js. Like Rails.vim for Node.
- [jshint](https://github.com/jshint/jshint) JSHint is a tool that helps to detect errors and potential problems in your JavaScript code
- [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax) Enhanced javascript syntax file for Vim
- [vim-coloresque](https://github.com/gorodinskiy/vim-coloresque) css/less/sass/html color preview for vim
- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) VIM Table Mode for instant table creation.
- [emmet-vim](https://github.com/mattn/emmet-vim) emmet for vim: <http://mattn.github.io/emmet-vim>

###Short Keys

- change buf: `]b` `[b`
- change tab: `]t` `[t`
- copy (all/selected) content: `Ctrl+c`
- write RO file: `w!!`
- line number toggle: `<F2>`
- nerdtree toggle: `<F3>`
- tagbar toggle: `<F4>`
- run python script: `<F5>`
- open a new tab: `<F6>`
- paste toggle: `<F7>`
- PEP8 format: `<F8>`
- wrap `"`/`'` for a word: `w"`/`w'`
- continue indent text to left or right on select/normal mode: `>` `<`
- change window: `<C-HJKL>`
- preview to select emoji: :`<C-e>`
- find files: `<C-p>`
- complete python code: `<C-n>`
- format json line: `<leader>jw` `<leader>jp`
- change surround: `csXY`
- del surround: `dsX`
- comment/uncomment: `\cc`/`\cu`
- table mode: `\tm`


###Features

- no backup and swap file
- correct encoding for chinese
- beautiful statusline and startify
- auto reload vimrc when it is changed
- highlight and ignorecase for search text
- support using mouse
- auto remove whitespace which at the line tail and blank line at the latest
- show content in terminal when exit the vim
- open a file at the latest change position
- auto check PEP8 format when read or write a python script
- one key to format python code with PEP8
- run python script with virtualenv if there is a `$VIRTUAL_ENV` (open script with virtualenv in terminal)
- auto open browser to preview when you open a markdown file, auto close the browser when you close the markdown file.
- auto complete the python code, use Ctrl+n
- show git diff in vim
- show indent guides
- multiple cursors for editing
- auto complete python sniptes by `<tab>` or `<shift-tab>`
- use tomorrow-night-bright color scheme
- color preview for .css files
- auto format markdown tables in table mode
- emmet for vim, chinese tutorial <http://www.zfanw.com/blog/zencoding-vim-tutorial-chinese.html>

###Screenshots

default open a python file

![](http://ww1.sinaimg.cn/large/67ac78cfjw1erenwmdolwj21kw0zkdr3.jpg)

working

![](http://ww1.sinaimg.cn/large/67ac78cfjw1erenwlnhc7j21kw0zkwpe.jpg)

--------------

next pics come from the plugin projects

ctrlp find files:

![](https://camo.githubusercontent.com/0a0b4c0d24a44d381cbad420ecb285abc2aaa4cb/687474703a2f2f692e696d6775722e636f6d2f7949796e722e706e67)

ultisnips (I am not using YouCompleteMe, using jedi-vim)

![](https://camo.githubusercontent.com/296aecf30e1607233814196db6bd3f5f47e70c73/68747470733a2f2f7261772e6769746875622e636f6d2f5369725665722f756c7469736e6970732f6d61737465722f646f632f64656d6f2e676966)

jedi complete

![](https://github.com/davidhalter/jedi/raw/master/docs/_screenshots/screenshot_complete.png)

preview markdown

![](https://camo.githubusercontent.com/6e7dc465d334c2f962ad8c8bfee654d0e8da24ff/687474703a2f2f646c2e64726f70626f782e636f6d2f752f32383935363236372f696e7374616e742d6d61726b646f776e2d64656d6f5f7468756d622e676966)

json line format(I am the author :flushed:)

![](https://github.com/axiaoxin/vim-json-line-format/raw/master/pic.gif)

emoji

![](https://camo.githubusercontent.com/c2c6add271b0719215f2cac78e6a777f83184bed/68747470733a2f2f7261772e6769746875622e636f6d2f6a756e6567756e6e2f692f6d61737465722f656d6f6a692d636f6d706c6574652e676966)

startify

![](https://raw.githubusercontent.com/mhinz/vim-startify/102aa438b2d2a88e2b4e331d8ff5320eed52f0c4/startify.png)

multiple cursors

![](https://github.com/terryma/vim-multiple-cursors/raw/master/assets/example1.gif?raw=true)

vim-coloresque

![](https://camo.githubusercontent.com/70916a51f45b5729332803c5de303f6f1849fc50/68747470733a2f2f7261772e6769746875622e636f6d2f676f726f64696e736b69792f76696d2d636f6c6f7265737175652f6d61737465722f73637265656e2e706e67)

vim-table-mode

<a href="http://www.youtube.com/watch?v=9lVQ0VJY3ps"><img src="https://raw.github.com/axil/vim-table-mode/master/youtube.png"/></a>

###Usage

Copy the **.vim** and **.vimrc** to your home.

    cp -r .vim ~
    cp .vimrc ~

or use vundle, just need copy `.vimrc` and:

    :PluginInstall
