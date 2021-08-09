"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration Begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

" get Vundle.vim from github first
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin 'airblade/vim-rooter'
Plugin 'junegunn/fzf'
Plugin 'gmarik/Vundle.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'beautify-web/js-beautify'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'junegunn/vim-xmark', { 'do': 'make' }
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
" vim-jsx-typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'peitalin/vim-jsx-typescript'
"Solarized 配色
"Plugin 'altercation/vim-colors-solarized'

" 设置gruvbox 配色
Plugin 'morhetz/gruvbox'

" Git commands
Plugin 'tpope/vim-fugitive'

" Dash
Plugin 'rizzatti/dash.vim'
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
"Plugin 'vim-scripts/DoxygenToolkit.vim'

" Python 自动补全
"Plugin 'davidhalter/jedi-vim'

" 状态栏
Plugin 'bling/vim-airline'

" 注释
Plugin 'scrooloose/nerdcommenter'

" golang vim-go
Plugin 'fatih/vim-go'

" syntastic
"Plugin 'vim-syntastic/syntastic'

" tagbar 与 gotags  配合使用
Plugin 'majutsushi/tagbar'

" gocode 代码自动补全功能
Plugin 'Blackrush/vim-gocode'

" 代码排版Tabular
Plugin 'godlygeek/tabular'

" markdown 
Plugin 'plasticboy/vim-markdown'

" markdown preview"
"Plugin 'iamcco/markdown-preview.vim'

" NERDTree 
Plugin 'scrooloose/nerdtree'

" NERDTree-git-plugin 
Plugin 'Xuyuanp/nerdtree-git-plugin'

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
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'

"Plugin 'Yggdroot/indentLine'
"
"node.js
"Plugin 'moll/vim-node'
"html css
Plugin 'mattn/emmet-vim'
Plugin 'easymotion/vim-easymotion'
" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'junegunn/vim-easy-align'
call vundle#end()

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ack config start 
"高亮搜索关键词
let g:ackhighlight = 1
"修改快速预览窗口高度为15
let g:ack_qhandler = "botright copen 15"
"在QuickFix窗口使用快捷键以后，自动关闭QuickFix窗口
let g:ack_autoclose = 1
" 搜索完后不自动跳到第一个结果文件
"cnoreabbrev Ack Ack!
" 设置搜索快捷键为<leader> + a
"nnoremap <Leader>a :Ack!<Space>
" ack的选项设置
let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case --follow"
" 如果不输入任何搜索参数，则默认以光标下的单词为搜索条件，并把它映射到<leader> + s上
"nnoremap <leader>s :Ack!<CR>
" ACK config  end 

" set filetypes as typescriptreact 
autocmd BufNewFile,BufRead *.ts,*.js,*.tsx,*.jsx set filetype=typescriptreact
"
" 运行时路径
set runtimepath^=~/.vim/bundle/ctrlp.vim
" 敲击<leader>+p键，进入搜索模式，这里为目录、MRU的混合模式
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" 根据通配符来忽略不需要搜索的文件
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
" 本地工作目录的规则，可设置以下选项
" 'c' - 设为当前文件所在的目录
" 'r' - 如果最近的祖先有包含以下目录，则将该祖先目录设为工作目录：.git .hg .svn .bzr _darcs,
" 'a' - 和c选项类似，理解为仅在r不生效的情况下，才执行c选项
let g:ctrlp_working_path_mode = 'ra'
" 哪些文件、目录、链接不在搜索范围内
let g:ctrlp_custom_ignore = {
         \ 'dir':  '\v[\/]\.(git|hg|svn)$',
         \ 'file': '\v\.(exe|so|dll)$',
         \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
         \ }

let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
" 让vim的补全菜单行为与一般IDE一致
set completeopt=longest,menu
" 触发(符号)补全时需要键入的字符数
let g:ycm_min_num_of_chars_for_completion = 1
" 补全候选项的最小字符数
let g:ycm_min_num_identifier_candidate_chars = 0
" 关闭诊断显示功能(已经使用了ale进行异步语法检查)
let g:ycm_show_diagnostics_ui = 0
" 在字符串和注释中仍会触发补全
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
" 禁止缓存匹配项，每次重新生成匹配项
let g:ycm_cache_omnifunc = 0
" 在用户接受提供的完成字符串后自动关闭窗口
let g:ycm_autoclose_preview_window_after_completion = 0
" 跳转到声明或定义处
nnoremap <silent><leader>gj :YcmCompleter GoToDefinitionElseDeclaration<cr>

" 自动触发语义补全
"let g:ycm_semantic_triggers =  {
"            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{1}'],
"            \ 'cs,lua,javascript': ['re!\w{1}'],
"            \ }
"" 遇到下列文件时才会开启YCM
"let g:ycm_filetype_whitelist = {
"            \ "c":1,
"            \ "cpp":1,
"            \ "python":1,
"            \ "go":1, 
"						\ "sh":1,
"            \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set gruvbox color Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set gruvbox color Configuration End 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set helplang=cn

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

" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" enable vim-easy-align-plugin
nmap ga <Plug>(EasyAlign)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python format Configuration Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"au BufNewFile, BufRead *.py
"			\ set tabstop=4
"			\ set softtabstop=4
"			\ set shiftwidth=4
"			\ set textwidth=79
"			\ set expandtab
"			\ set autoindent
"			\ set fileformat=unix
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

"autocmd BufReadPost *.go call tagbar#autoopen()  "如果是golang 文件， 则tagbar自动开启
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck', 'gometalinter']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_template_autocreate = 0

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
set relativenumber
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

"let g:indentLine_char = "|"
"let g:indentLine_enabled = 1
"let g:autopep8_disable_show_diff = 1
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
" Ali: to indent json files on save
"""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd FileType json autocmd BufWritePre <buffer> %!python -m json.tool
au BufNewFile,BufRead *.conf set filetype=json
"""""""""""""""""""""""""""""""""""""""""""""""""
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
" auto js/html/css
autocmd FileType javascript setlocal equalprg=js-beautify\ -f\ -\ -s\ 2\ -B  
autocmd FileType html setlocal equalprg=html-beautify\ -f\ -\ -s\ 2\ -B  
autocmd FileType css setlocal equalprg=css-beautify\ -f\ -\ -s\ 2\ -B  

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
set tabstop=2

" 统一缩进为4
set softtabstop=2
set shiftwidth=2

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
"autocmd! BufWritePost _vimrc source %
if has('python3')
  silent! python3 1
endif
"to fix E523: Not allowed here.
set completeopt-=preview
""""""""""""""""""""""""""""""""

set rtp+=/usr/local/opt/fzf

" 按照PEP8标准来配置vim
au BufNewFile,BufRead *.py set tabstop=4 |set softtabstop=4|set shiftwidth=4|set textwidth=79|set expandtab|set autoindent|set fileformat=unix
" Disable show diff window
let g:autopep8_disable_show_diff=1

" vim-autopep8自1.11版本之后取消了F8快捷键，需要用户自己为:Autopep8设置快捷键：
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
