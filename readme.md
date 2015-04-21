My VIM Settings
===============
This project is extracted from [my dot files](https://github.com/axiaoxin/mac-dotfiles)

This VIM settings is for Python programmers on Mac OSX. It use Vundle to manage the plugins.


###Dependences

    brew install git npm ctags
    sudo npm -g install instant-markdown-d
    sudo pip install isort jedi yapf flake8 virtualenvwrapper

(Maybe I have forgot some other dependences :( )

###Plugins

[nerdtree](https://github.com/scrooloose/nerdtree) A tree explorer plugin for vim.

[nerdcommenter](https://github.com/scrooloose/nerdcommenter) Vim plugin for intensely orgasmic commenting

[tagbar](https://github.com/majutsushi/tagbar) Vim plugin that displays tags in a window(ctags is needed)

[ctrlp](https://github.com/kien/ctrlp.vim) Fuzzy file, buffer, mru, tag, etc finder.

[vim-airline](https://github.com/bling/vim-airline) lean & mean status/tabline for vim that's light as air

[vim-snippets](https://github.com/honza/vim-snippets) vim-snipmate default snippets

[UltiSnips](https://github.com/SirVer/ultisnips) The ultimate snippet solution for Vim

[vim-surround](https://github.com/tpope/vim-surround) quoting/parenthesizing made simple

[vim-instant-markdown](https://github.com/suan/vim-instant-markdown) Instant Markdown previews from VIM!

[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) True Sublime Text style multiple selections for Vim

[vim-startify](https://github.com/mhinz/vim-startify) A fancy start screen for Vim

[vim-emoji](https://github.com/junegunn/vim-emoji) Named Emoji in Vim

[vim-json-line-format](https://github.com/axiaoxin/vim-json-line-format) format json line

[jedi-vim](https://github.com/davidhalter/jedi-vim) Using the jedi autocompletion library for VIM.

[vim-flake8](https://github.com/nvie/vim-flake8) Flake8 plugin for Vim

[indentLine](https://github.com/Yggdroot/indentLine) A vim plugin to display the indention levels with thin vertical lines

[vim-gitgutter](https://github.com/airblade/vim-gitgutter) A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.

###Short Keys

change buf: `]b` `[b`

change tab: `]t` `[t`

copy (all/selected) content: `Ctrl+c`

write RO file: `w!!`

line number toggle: `<F2>`

nerdtree toggle: `<f3>`

tagbar toggle: `<F4>`

run python script: `<F5>`

compile python script: `<F6>`

paste toggle: `<F7>`

PEP8 format: `<F8>`

open a new tab: `<F9>`

wrap `"`/`'` for a word: `w"`/`w'`

tab for mv text: `<tab>` `<shift-tab>`

change window: `<C-HJKL>`

preview to select emoji: :`<C-e>`

find files: `<C-p>`

complete python code: `<C-n>`

format json line: `<leader>jw` `<leader>jp`

change surround: `csXY`

del surround: `dsX`

comment/uncomment: `<leader>cc`/`<leader>cu`


###Features

no backup and swap file

correct encoding for chinese

beautiful statusline and startify

auto reload vimrc when it is changed

highlight and ignorecase for search text

support using mouse

auto remove whitespace which at the line tail and blank line at the latest

show content in terminal when exit the vim

open a file at the latest change position

auto check PEP8 format when read or write a python script

run python script with virtualenv if there is a `$VIRTUAL_ENV`

auto preview when you open a markdown file

auto complete the python code

show git diff in vim

show indent guides

multiple cursors for editing

auto compelte python sniptes by `<tab>` or `<shift-tab>`
