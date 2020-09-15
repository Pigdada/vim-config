" ~/.vimrc
" vim config file
" date 2019-03-08
" Created by zhudy
""""""""""""""""""""""""""""""""""""""""""
" => 全局变量
""""""""""""""""""""""""""""""""""""""""""

" 关闭兼容模式
set nocompatible

" 设置历史记录步数
set history=100

" 开启相关插件
filetype on
filetype plugin on
filetype indent on

" 当文件被外部修改时, 自动更新该文件
set autoread

" 激活鼠标的使用
set mouse=a

"""""""""""""""""""""""""""""""""""""""""
" => 字体和颜色
"""""""""""""""""""""""""""""""""""""""""

" 开启语法
syntax enable

" 设置字体
set guifont=dejaVu\ Sans\ MONO\ 10
"
" 设置颜色
"colorscheme desert

" 高亮显示当前行
set cursorline
hi cursorline guibg=#00ff00
hi CursorColumn guibg=#00ff00

"""""""""""""""""""""""""""""""""""""""""
" => 代码折叠功能
"""""""""""""""""""""""""""""""""""""""""
" 激活折叠
set foldenable

" 设置安装语法方式折叠(可简写set fdm=XX)
" 有6种折叠方法:
"manual 手工定义折叠
"indent 更多缩进表示更高级别的折叠
"expr	用表达式来定义折叠
"syntax	用语法高亮来定义折叠
"diff 	对没有更改的文件进行折叠
"marker	对文中的标志进行折叠
set foldmethod=manual

" 设置折叠区域的宽度
" 如果不为0,则在屏幕左侧显示一个折叠标识符
" 分别用 “-” 和 “+” 来表示打开和关闭的折叠。
set foldcolumn=0

" 设置折叠层数为3
setlocal foldlevel=3

" 设置为自动关闭折叠
set foldclose=all

" 用空格键来代替zo和zc快捷键实现开关折叠
" zo   	O-Pen a fold 	(打开折叠)
" zc	C-lose a fold 	(关闭折叠)
" zf	F-lod creation	(创建折叠)
nnoremap <space> @=((foldclosed('.)) < 0) ? 'zc' : 'zo')<CR>

""""""""""""""""""""""""""""""""""""
" 使用空格来代替Tab
""""""""""""""""""""""""""""""""""""
set expandtab

" 设置所有的Tab和缩进为4个空格
set tabstop=4

" 设置 << 和 >> 命令移动时的宽度为4
set shiftwidth=4

" 使得按退格键时可以一次删除4个空格
set softtabstop=4

set smarttab

" 缩进, 自动缩进(继承前一行的缩进)
" set autoindex命令关闭自动缩进, 是下面配置的缩写。
" 可使用autoindent命令的简写, 即“:set ai” 和 “:set noai“
" 还可以使用“:set ai sw=4” 在一个命令中打开缩进并设置缩进级别
set ai

" 智能缩进
set si

" 自动换行
set wrap

" 设置软宽度
set sw=4

""""""""""""""""""""""""""""""""""""
" => Vim 界面 by oldboy
""""""""""""""""""""""""""""""""""""
" Turn on Wild menu
set wildmenu

" 显示直尺
set ruler

" 设置命令行的高度
set cmdheight=1

" 显示行数
set nu

" Do not redraw, when running macros.. lazyredraw
set lz

" 设置退格
set backspace=eol,start,indent

" Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

" Set magic on
set magic

" 关闭遇到错误时的声音提示
" 关闭错误信息响铃
set noerrorbells

" 关闭使用可视响铃代替呼叫
set novisualbell

" 显示匹配的括号([{和}])
set showmatch

" How many tenths of a second to blink
set mat=2

" 搜索时高亮显示搜索到的内容
set hlsearch

" 搜索时不区分大小写
" 还可以使用简写(”:set ic“ 和”:set noic“)
set ignorecase

""""""""""""""""""""""""""""""""""
" => 编码设置
""""""""""""""""""""""""""""""""""
" 设置编码
set encoding=utf-8
" 设置文件编码
set fileencodings=utf-8

" 设置终端编码
set termencoding=utf-8
""""""""""""""""""""""""""""""""""
" => 其他设置 by oldboy 2010
""""""""""""""""""""""""""""""""""
" 开启新行时使用智能自动缩进
set smartindent
set cin
set showmatch

" 隐藏工具栏
set guioptions=T

" 隐藏菜单栏
set guioptions=m

" 置空错误铃声的终端代码
set vb t_vb=

" 显示状态栏 (默认值为1, 表示无法显示状态栏)
set laststatus=2

" 粘贴不换行问题的解决方法
set pastetoggle=<F9>

" 设置背景色
set background=dark

" 设置高亮相关
highlight Search ctermbg=black ctermfg=white guifg=white guibg=black

autocmd BufNewFile *.py,*.cc,*.sh,*.java exec ":call SetTitle()"
func SetTitle()
    if expand("%:e") == 'sh'
        call setline(1, "#!/bin/bash")
        call setline(2, "# Author: zhudy")
        call setline(3, "# Blog:")
        call setline(4, "# Time:".strftime("%c"))
        call setline(5, "# Name:".expand("%"))
        call setline(6, "# Version:V1.0")
        call setline(7, "# Description:")
        call setline(8, "")
    endif
endfunc



