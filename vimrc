" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set number "显示行号
set ruler  "显示光标当前位置
set background=dark
colorscheme desert
syntax enable
set mouse=a
set ignorecase "搜索忽略大小写
set hlsearch	"高亮显示搜索结果
set incsearch	"及时显示搜索结果
set backup
set backupext=.bak
"if has("vms")
 " set nobackup
"else
 " set backupext=.bak
"endif
set history=50 "冒号和搜索命令列表长度50
set showcmd   	"右下角显示一个完整的命令已经完成的部分
"set autoindent  "以上一行的方式缩进
map W gg 	"W 映射 gg
filetype plugin on
filetype plugin indent on  "自动识别文件类型，使用文件类型plugin脚本，使用缩进定义文件
"autocmd Filetype text selocal textwidth=60 "text文本超过60字符自动换行
map <F2> y$
map <F3> :vsplit<Enter>
map <F4> :only<Enter>
set nowrap "不要折行
set listchars=tab:>-,trail:- "制表符显示>- , 末尾空格-
set cmdheight=2		"底部信息显示为2行

