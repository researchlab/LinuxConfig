"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration Begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" get Vundle.vim from github first
"git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Solarized 配色
"Plugin 'altercation/vim-colors-solarized'

" 设置gruvbox 配色
Plugin 'morhetz/gruvbox'

" Git commands
Plugin 'tpope/vim-fugitive'


" Git status
"Plugin 'airblade/vim-gitgutter'
"let g:gitgutter_override_sign_column_highlight = 1
"let g:gitgutter_highlight_lines = 1
"let g:gitgutter_signs = 1
"let g:gitgutter_enabled = 1

" tag 高亮
Plugin 'vim-scripts/TagHighlight'

" 配合 ctags
"Plugin 'vim-scripts/taglist.vim'

" Doxygen注释
Plugin 'vim-scripts/DoxygenToolkit.vim'

" Python 自动补全
Plugin 'davidhalter/jedi-vim'

" 状态栏
Plugin 'bling/vim-airline'

" 注释
Plugin 'scrooloose/nerdcommenter'

" golang vim-go
Plugin 'fatih/vim-go'

" syntastic
Plugin 'vim-syntastic/syntastic'

" tagbar 与 gotags  配合使用
Plugin 'majutsushi/tagbar'

" neocomplete 实时提示-golang
Plugin 'shougo/neocomplete.vim'

" gocode 代码自动补全功能
Plugin 'Blackrush/vim-gocode'

" 代码排版Tabular
Plugin 'godlygeek/tabular'

" markdown 
Plugin 'plasticboy/vim-markdown'

" markdown preview"
Plugin 'iamcco/markdown-preview.vim'

" NERDTree 
Plugin 'scrooloose/nerdtree'

" NERDTree-git-plugin 
Plugin 'Xuyuanp/nerdtree-git-plugin'

" HTML 补全
Plugin 'mattn/emmet-vim'

" minibufExplorer
Plugin 'fholgado/minibufexpl.vim'

" php code 格式化(vim-php-cs-fixer, vim-phpfmt 都没有效果)
"Plugin 'stephpy/vim-php-cs-fixer'
"Plugin 'beanworks/vim-phpfmt'

"task
Plugin 'farseer90718/vim-taskwarrior'

"vim-multiple-cursors
"Plugin 'terryma/vim-multiple-cursors'

"youcompleteMe
Plugin 'Valloric/YouCompleteMe'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
call vundle#end()

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set gruvbox color Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set gruvbox color Configuration End 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taskwarrior Configuration Begin 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" default task report type
let g:task_report_name     = 'next'
" custom reports have to be listed explicitly to make them available
let g:task_report_command  = []
" whether the field under the cursor is highlighted
let g:task_highlight_field = 1
" can not make change to task data when set to 1
let g:task_readonly        = 0
" vim built-in term for task undo in gvim
let g:task_gui_term        = 1
" allows user to override task configurations. Seperated by space. Defaults
to ''
let g:task_rc_override     = 'rc.defaultwidth=999'
" default fields to ask when adding a new task
let g:task_default_prompt  = ['due', 'description']
" whether the info window is splited vertically
let g:task_info_vsplit     = 0
" info window size
let g:task_info_size       = 15
" info window position
let g:task_info_position   = 'belowright'
" directory to store log files defaults to taskwarrior data.location
let g:task_log_directory   = '~/.task'
" max number of historical entries
let g:task_log_max         = '20'
" forward arrow shown on statusline
let g:task_left_arrow      = ' <<'
" backward arrow ...
let g:task_left_arrow      = '>> '

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taskwarrior Configuration End 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python format Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile, BufRead *.py
			\ set tabstop=4
			\ set softtabstop=4
			\ set shiftwidth=4
			\ set textwidth=79
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python format Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MiniBufExplorer Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
let g:miniBufExplMoreThanOne=0

map <F6> :MBEbp<CR>
map <F7> :MBEbn<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MiniBufExplorer Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufReadPost *.go call tagbar#autoopen()  "如果是golang 文件， 则tagbar自动开启
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Go Configuration End 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:tagbar_width=30 "窗口宽度设置
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds' : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin' : 'gotags',
	\ 'ctagsargs': '-sort -silent'
\ }

nmap <F8> :TagbarToggle <CR>

"启动vim时自动开启实时补全功能
let g:neocomplete#enable_at_startup = 1 

" 关闭markdown 折叠功能
let g:vim_markdown_folding_disabled = 1

" tab 2 space 
set ts=2
" Display Begin
"""""""""""""""""""""""""""""""""""""""""""""""""
"标示不必要的空白字符
au BufRead, BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/

" 字体
set guifont=Consolas:11

" 开启 xterm 256 色
set t_Co=256

" 开启语法高亮
syntax on

" 行号
set number

" 背景
set background=dark

" 突出显示当前行
set cursorline              

" 突出显示当前列
set cursorcolumn 

" 打开状态栏标尺
set ruler 

" 搜索高亮
set hlsearch

" 帮助文档
set helplang=cn

" Tabular maping
map <s-=> Tab/=

"Wrap lines 
set wrap

"
" Display End
"""""""""""""""""""""""""""""""""""""""""""""""""
"
" PHP Code Format Start 
"""""""""""""""""""""""""""""""""""""""""""""""""

" If php-cs-fixer is in $PATH, you don't need to define line below
"let g:php_cs_fixer_path = "usr/local/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar
" let g:php_cs_fixer_level = "symfony"              " which level ?
" let g:php_cs_fixer_config = "default"             " configuration
" let g:php_cs_fixer_config_file = '.php_cs'       " configuration file
" let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
" let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
" let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by
" default (<leader>pcd)
" let g:php_cs_fixer_dry_run = 0                    " Call command with
" dry-run option
" let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

"autocmd BufWritePost *.php :call PhpCsFixerFixFile()
" A standard type: PEAR, PHPCS, PSR1, PSR2, Squiz and Zend
let g:phpfmt_standard = 'PSR2'
" Or your own defined source of standard (absolute or relative path):
" let g:phpfmt_standard = '/path/to/custom/standard.xml'
"""""""""""""""""""""""""""""""""""""""""""""""""
" PHP Code Format End
"

"
" NERDTree Start 
"""""""""""""""""""""""""""""""""""""""""""""""""

" 当单独打开vim时 自动打开 NERDTree 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 当只有NERDTree窗口时 自动关闭vim 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree 快捷键 <C-n> 表示 Ctrl + n 
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree End
"


"
" NERDTree-git-plugin Start 
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree-git-plugin End
"

"
" MarkdownPreview Start
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:mkdp_path_to_firefox = "firefox"

"
" Tab & Indent Begin
"""""""""""""""""""""""""""""""""""""""""""""""""

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不要用空格代替制表符
set noexpandtab

" 在行和段开始处使用制表符
set smarttab

" 自动缩进
set cindent

"
" Tab & Indent End
"""""""""""""""""""""""""""""""""""""""""""""""""

" 设置折叠
set foldmethod=indent
" 关闭打开文件时折叠， 打开之后可用zc全部折叠
set nofoldenable
" 增量搜索
set incsearch

" 搜索忽略大小写
set ignorecase

" 历史记录数
set history=1000

" 修正退格键
set backspace=indent,eol,start

" 退出提示
set confirm

" 去掉输入错误的提示声音
set noeb

" 编码
set encoding=utf-8
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" 括号匹配
set showmatch

" 匹配时间(单位1/10秒)
set matchtime=1

" 完成提示选项
set completeopt=preview,menu 

" 正则表达式，除了 $ . * ^ 之外其他元字符都要加反斜杠 
set magic

" 设置CTags
set tags=./tags,tags

" 显示命令
set showcmd

"共享剪贴板  
set clipboard+=unnamed 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Configuration Begin 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 总是显示状态栏
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '>'
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_right_sep = '<'
let g:airline_symbols.linenr = '|'
let g:airline_symbols.branch = '$'
let g:airline_symbols.paste = 'p'
let g:airline_symbols.whitespace = '='


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Configuration End 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
let g:solarized_termcolors=256
"colorscheme solarized
" colorscheme peachpuff

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist Configuration Begin 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 按照名称排序
let Tlist_Sort_Type = "name"

" 在右侧显示窗口
let Tlist_Use_Right_Window = 1

" 压缩方式
let Tlist_Compart_Format = 1

" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1

" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0

" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0

let Tlist_Show_menu = 1

" 0为同时显示多个文件函数列表,1则只显示当前文件函数列表
let Tlist_Show_one_File = 1

" 如果taglist是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdCommenter Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"默认情况下 <leader> = \

"<leader>cc			注释当前行
"<leader>cn			Nested注释
"<leader>c<space>	切换选定代码行注释
"<leader>cu			取消注释
"<leader>ca			在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
"<leader>cA			在当前行尾添加注释符，并进入Insert模式

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdCommenter Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:DoxygenToolkit_authorName="Hong Li, leehongitrd@163.com"
let g:DoxygenToolkit_versionString="1.0.0"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件头注释设置 Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <F12> :call TitleDet()<cr>'s 这个写法是错误滴,E20: Mark not set
map <F12> :call TitleDet()<cr>
function AddTitle()
	call append(0,"/**")
	call append(1,"*     File: ".expand("%:t"))
	call append(2,"*	 Brief: ")
	call append(3,"*	 Descr: ")
	call append(4,"*")
	call append(5,"*   Author: Hong Li, leehongitrd@163.com")
	call append(6,"*  Created: ".strftime("%Y-%m-%d %X"))
	call append(7,"* Modified: ".strftime("%Y-%m-%d %X"))
	call append(8,"**/")
	call append(9,"")
	echohl WarningMsg |echo "Successful in adding the copyright."|echohl None
endfunction

" 更新最近修改的时间和文件名
function UpdateTitle()
	normal m'
	"execute '/* *File:/s@:.*$@\=":\t\t".expand("%:t")@'
	execute '/* *Modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %X")@'
	normal "
	normal mk
	execute '/* *File:/s@:.*$@\=":\t\t".expand("%:t")@'
	"execute '/* *Modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %X")@'
	execute "noh"
	normal 'k
	echohl WarningMsg | echo "Successful in updating the copy right."| echohl None
endfunction

function TitleDet()
	let n=1
	while n < 10
		let line = getline(n)
		if line =~ '^\*\s*\S*Modified:\S*.*$'
			call UpdateTitle()
			return
		endif
		let n=n+1
	endwhile
	call AddTitle()
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件头注释设置 End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"autoload _vimrc
autocmd! BufWritePost _vimrc source %
