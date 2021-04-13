# my-vimrc

该仓库保存我的 VIM 配置文件，平时主要是用 VIM 写 Golang 、 Python 、 Markdown 较多。

目前有两个分支， master 分支是旧版本 VIM 的配置，已不再维护。

vim-8 分支是当前正在 macOS 上使用 VIM 8.1 版本使用的配置。

## VIM 版本信息

```
VIM - Vi IMproved 8.1 (2018 May 18, compiled Oct 15 2019 10:20:59)
macOS version
```

## 特性

- 自动检测并安装 `vim-plug` 插件管理器
- 正确解析中文编码不乱码
- 取消备份，不自动生成 swap 文件
- 状态栏使用 airline 外观优美，信息丰富
- 配置修改后自动加载立刻生效，已打开文件被修改后自动载入
- 使用 ALE 自动语法检测并可自动修复
- 文本搜索支持高亮和键入即时搜索并智能忽略大小写
- 支持使用鼠标操作
- 快捷切换文件行号显示
- 保存文件是自动删除行尾空白和文件末尾空行
- 使用 4 个空格填充 tab ，智能缩进，退格键智能删除空格
- 支持代码按缩进折叠
- 退出 VIM 后，内容显示在终端屏幕, 可以用于查看和复制
- 打开文件时始终跳转到上次光标所在位置
- 退出 VIM 后，仍然可以 undo 上次编辑
- 拥有大量功能丰富，易记易按的按键映射
- j|k 移动行的时候光标始终保持在屏幕中间
- Ctrl + c normal 模式下复制文件全部内容到系统剪贴板， visual 模式下复制选中内容到系统剪贴板
- Ctrl + v 按原样粘贴剪贴板内容
- 支持查看文件目录树
- 使用 LeaderF 显示函数列表
- 一键运行当前 python 脚本，支持 virtualenv
- 一键格式化 JSON
- 中文之间夹杂的英文和数字之间可一键添加空格
- 快速移动窗口或改变窗口大小
- 使用 LeaderF 支持文件模糊查找
- 支持一键添加或取消注释
- 随机主题配色并支持一键切换
- 优雅的启动界面
- 集成 vim-go 插件， Gopher VIM 党标配
- 支持括号配对高亮
- 支持 Table 模式快速编辑、格式化 Markdown 表格
- 支持颜色值预览
- 支持异步执行 shell 命令
- 支持显示 git diff 标记
- 支持多行编辑
- 支持快速修改单词两端的包裹字符
- 使用 YouCompleteMe 支持代码自动补全
- 集成 vimwiki
- 自动配对编辑括号、引号
- 支持展示屏幕日历
- 支持 Nginx 配置高亮显示
- 支持 Markdown 实时预览

## 插件列表

使用 [vim-plug](https://github.com/junegunn/vim-plug) 管理插件，会通过 .vimrc 自动下载，无需手动安装

- [nerdtree](https://github.com/scrooloose/nerdtree) A tree explorer plugin for vim.
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter) Vim plugin for intensely orgasmic commenting
- [vim-airline](https://github.com/vim-airline/vim-airline) lean & mean status/tabline for vim that's light as air.
- [vim-colorschemes](https://github.com/axiaoxin/vim-colorschemes) I <3 these vim colorschemes
- [vim-plugin-random-colorscheme-picker](https://github.com/sunuslee/vim-plugin-random-colorscheme-picker) Pick the VIM colorscheme that you are destined to be with.:)
- [vim-startify](https://github.com/mhinz/vim-startify) A fancy start screen for Vim
- [vim-go](https://github.com/fatih/vim-go) Go development plugin for Vim
- [rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim) Better Rainbow Parentheses.
- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) VIM Table Mode for instant table creation.
- [vim-coloresque](https://github.com/gko/vim-coloresque) css/less/sass/html color preview for vim.
- [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim) Run Async Shell Commands in Vim 8.0 / NeoVim and Output to Quickfix Window.
- [vim-signify](https://github.com/mhinz/vim-signify) Show a diff using Vim its sign column.
- [vim-json-line-format](https://github.com/axiaoxin/vim-json-line-format) format json line in Vim.
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi) Multiple cursors project for vim/neovim.
- [vim-surround](https://github.com/tpope/vim-surround) quoting/parenthesizing made simple
- [LeaderF](https://github.com/Yggdroot/LeaderF) An asynchronous fuzzy finder which is used to quickly locate files, buffers,mrus, tags, etc. in large project
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) A code-completion engine for Vim.
- [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) A Vim plugin that manages your tag files.
- [gutentags_plus](https://github.com/skywind3000/gutentags_plus) The right way to use gtags with gutentags.
- [ale](https://github.com/dense-analysis/ale) Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support.
- [vimwiki](https://github.com/vimwiki/vimwiki) Personal Wiki for Vim
- [ultisnips](https://github.com/SirVer/ultisnips) The ultimate snippet solution for Vim
- [vim-snippets](https://github.com/honza/vim-snippets) vim-snipmate default snippets
- [auto-pairs](https://github.com/jiangmiao/auto-pairs) Insert or delete brackets, parens, quotes in pair.
- [calendar.vim](https://github.com/itchyny/calendar.vim) A calendar application for Vim
- [nginx.vim](https://github.com/chr4/nginx.vim) Improved nginx vim plugin (incl. syntax highlighting)
- [vim-instant-markdown](https://github.com/suan/vim-instant-markdown) Instant Markdown previews from VIm!
- [git-messenger.vim](https://github.com/rhysd/git-messenger.vim) Vim and Neovim plugin to reveal the commit messages under the cursor
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) fugitive.vim: A Git wrapper so awesome, it should be illegal
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more

## 自定义按键映射

- 切换 buffer: `]b` `[b`
- 切换 tab: `]t` `[t`
- 复制（全部|选中）、粘贴：`Ctrl-c`、`Ctrl-v`
- 写入只读文件: `w!!`
- 关闭（打开）行号显示: `<F2>`
- 打开（关闭）文件目录树: `<F3>`
- 打开函数列表: `<F4>` （目前不支持一键关闭，需要在列表窗口中使用 `:q`退出）
- 运行当前打开的 Python 脚本: `<F5>`
- 新建 tab 标签页: `<F6>`
- 一键 lint fix: `<F8>`
- 格式化当前打开的 json 文件: `<F9>`
- 中文中夹杂的英文和数字添加空格: `<F10>`
- 给当前单词添加引号: `\w'`、`\w"`
- 快速编辑单词包裹字符: `csXY` `dsX`
- 大小写转换并自动在前面加 \_ （用于 abc`D`ef -> abc_def ）: `!`
- 删除当前字符并对后面的字符进行大小写转换 （用于 abc`_`def -> abcDef ）: `@`
- 在 Normal Mode 和 Visual/Select Mode 下，利用 > 键和 < 键来缩进文本: `>` `<`
- 上下左右切换窗口: `Ctrl-k` `Ctrl-j` `Ctrl-h` `Ctrl-l`
- 调整窗口大小: `Ctrl-Shift-方向键`
- 关闭 quickfix 窗口: `\q`
- 模糊查找文件: `\f` `\m`
- 格式化显示单行 JSON: `\wj` `\pj`
- 多行注释编辑: `\cc` `\cu`
- markdown 表格模式: `\tm`
- 编译 go 文件: `\gb`
- 运行 go 文件: `\gr`
- 运行 go 单元测试: `\gt`
- 代码补全: `Ctrl-z`
- vimwiki 模式，启动界面执行: `\ww`
- 展开代码片段: `Ctrl-e`
- 切换随机主题配色: `\c`
- 复制内容到系统剪贴板: `Ctrl-c`
- 显示 Golang 代码引用列表: `\r`
- 显示 git 提交信息: `\gm`
- 打开 markdown 预览：`\p`
- 关闭 markdown 预览：`\q`
- 按文件名查找文件: `\ff`
- 查找最近使用的文件: `\fm`
- 按文件内容查找文件: `\fg`


## 屏幕截图

有的截图可能不是最新的，仅供参考。

启动界面

![](./screenshots/start.png)

日常编码截图

![](./screenshots/working.png)

打开一个 go 文件

![](./screenshots/openfile.png)

打开 Python 文件并一键运行

![](./screenshots/python.png)

打开 Nginx 配置文件

![](./screenshots/nginx.png)

代码补全

![](./screenshots/complete.png)

文件搜索

![](./screenshots/mru.png)

查看日历

![](./screenshots/cal1.png)

![](./screenshots/cal2.png)

颜色值预览

![](./screenshots/color.png)

Markdown 预览

![](./screenshots/markdown.png)

彩色括号

![](./screenshots/parenthese.png)

格式化文本中的单行 json

![](./screenshots/jsonline.gif)

Markdown 表格模式

<a href="http://www.youtube.com/watch?v=9lVQ0VJY3ps"><img src="https://raw.github.com/axil/vim-table-mode/master/youtube.png"/></a>

# 安装及使用

!!! VIM 版本必须在 8 以上 且 Python 版本是 3.x.x

VIM 升级可参考 wiki: <https://github.com/axiaoxin/my-vimrc/wiki/Upgrade-VIM-to-8.x>

Python 升级可参考 wiki: <https://github.com/axiaoxin/my-vimrc/wiki/Upgrade-Python-to-3.x>

### 外部依赖

使用该配置需要执行以下命令安装一些外部依赖：

```
brew install cmake python mono go nodejs pygments global cppcheck
brew unlink ctags && brew install --HEAD universal-ctags/universal-ctags/universal-ctags
[sudo] pip3 install isort yapf flake8 autopep8 pylint
npm -g install instant-markdown-d prettier markdownlint
```

### 安装插件

1. 复制 `.vimrc` 文件到你的 `$HOME`目录下，打开 VIM ，执行 `:PlugInstall` ，等待插件安装完成。

2. 安装 vim-go 依赖的二进制文件: 打开一个 go 文件执行 `:GoInstallBinaries`

3. 配置 YouCompleteMe: <https://github.com/ycm-core/YouCompleteMe#macos>

执行 `install.py` 脚本前，可能你需要先安装好 go 、 rust 、 java 、 npm ，未安装可参考:<https://github.com/axiaoxin/my-vimrc/wiki/YouCompleteMe-install-all-dependencies>

```
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
```

4. 安装 nerdfont 字体： https://www.nerdfonts.com/font-downloads
5. 安装 LeaderF C 扩展（可选）：`:LeaderfInstallCExtension`

# Stargazers over time

[![Stargazers over time](https://starchart.cc/axiaoxin/my-vimrc.svg)](https://starchart.cc/axiaoxin/my-vimrc)
