"""""""""""""""""""""""""""""""""""""""""
" Plugin:
" 	
" 	安装插件	:PluginInstall
" 	清除插件	:PluginClean
" 	查找插件	:PluginSearch
" 	列出插件	:PluginList
" 	更新插件	:PluginUpdate
"
"""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle
Plugin 'gmarik/vundle'

" Color
Plugin 'desert256.vim'
Plugin 'EditPlus'
Plugin 'Impact'
Plugin 'molokai'
Plugin 'Solarized'
Plugin 'vibrantink'
Plugin 'vividchalk.vim'

" utility
Plugin 'a.vim'			"switch with .c <---> .h
Plugin 'authorinfo'		" 
Plugin 'asciidoc.vim'
Plugin 'AutoClose'
Plugin 'AutoComplPop'
Plugin 'auto_mkdir'
Plugin 'cecutil'
Plugin 'comments.vim'
Plugin 'confluencewiki.vim'
""Plugin 'cscope.vim'
Plugin 'css_color.vim'
Plugin 'ctrlp.vim' 		"CTRL+P
Plugin 'dyng/ctrlsf.vim'
Plugin 'c.vim'
Plugin 'checksyntax'
Plugin 'django.vim'
Plugin 'DfrankUtil'
Plugin 'EasyGrep'
Plugin 'EasyMotion'
Plugin 'FencView.vim' 	"文件代码自动检测
Plugin 'fcitx.vim'
Plugin 'FuzzyFinder'
Plugin 'fugitive.vim'
Plugin 'Gist.vim'
Plugin 'gitv'
Plugin 'cespare/vim-golang'
Plugin 'Blackrush/vim-gocode'
Plugin 'Gundo'
"Plugin 'grep.vim'
Plugin 'jslint.vim'
Plugin 'html5.vim'
Plugin 'IndentAnything'
Plugin 'instant-markdown.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Javascript-Indentation'
Plugin 'JavaScript-syntax'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'jsbeautify'
""Plugin 'jsruntime.vim'
Plugin 'L9'
""Plugin 'less-syntax'
Plugin 'less.vim'
Plugin 'mako.vim--Torborg'
"Plugin 'Mark'
Plugin 'Markdown'
Plugin 'matchit.zip'
Plugin 'minibufexpl.vim'
Plugin 'moin.vim'
Plugin 'mru.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'OmniCppComplete'
Plugin 'OmniTags'
Plugin 'python.vim'
Plugin 'python_fold'
Plugin 'restart.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'Syntastic'
Plugin 'ShowPairs'
Plugin 'ShowTrailingWhitespace'
Plugin 'snipMate'
Plugin 'sourcebeautify.vim'
Plugin 'SrcExpl'
Plugin 'STL-improved'
Plugin 'SudoEdit.vim'
Plugin 'surround.vim'
Plugin 'SuperTab'
Plugin 'Tabular'
Plugin 'Tagbar'
Plugin 'TaskList.vim'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'tpope/vim-abolish'
Plugin 'templates'
Plugin 'NERD_tree-Project'
Plugin 'UltiSnips'
Plugin 'Valloric/ListToggle'
""Plugin 'Valloric/YouCompleteMe'
Plugin 'VimIM'
Plugin 'Vimpress'
Plugin 'vimwiki'
Plugin 'vim-cpp-auto-include'
Plugin 'junegunn/vim-easy-align'
Plugin 'vimprj'
""Plugin 'vim-templates'
Plugin 'VOoM'
Plugin 'WebAPI.vim'
Plugin 'winmanager'
Plugin 'xmledit'
Plugin 'xml.vim'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'Yggdroot/indentLine'
Plugin 'ZenCoding.vim'

filetype plugin indent on

" Theme {{{
set background=dark 	    	"设置主题整体为暗色调
syntax enable 			    	"支持语法高亮
syntax on				    	"开启语法高亮
colorscheme solarized       	"
highlight clear SignColumn
highlight clear LineNr
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=darked guifg=white
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=darked guifg=white
" }}}

" genaral settings {{{
set autochdir					" 
set autoindent					" 自动缩进
set hlsearch					" 高亮搜索结果
set incsearch					" 开启实时搜索
set nobackup					" 不生成备份文件
set nowrapscan					" 
set writebackup					" 
set number						" 显示行号
set showmatch					" 显示配对匹配
set smartindent					" 智能缩进
set ruler						" 显示光标位置
set nocp						" 关闭vi兼容模式

set ambiwidth=double			"
set backspace=2					"
set t_Co=256					"
set tabstop=4					"
set shiftwidth=4				"
set cindent shiftwidth=4		"
set cmdheight=2					" 命令行高度
set laststatus=2				" 开启状态栏
set foldmethod=indent			" 设置折叠模式(缩进)
set foldlevel=5
set mouse=a						""

filetype indent on
filetype plugin on
filetype plugin indent on

set fileformats=unix,dos,mac	" 支持文本格式
set fileformat=unix				" 默认文本格式
set guifont=Courier\ New\ 12	" 默认字体
" 支持文件编码
set fileencodings=utf-8,ucs-bom,cp936,gbk,gb18030,big5,latin1
set fileencoding=utf-8			" 默认文件编码
set encoding=utf-8				" 默认显示编码
let &termencoding=&encoding
""if has("win32") && has("gui_running")
""	language message zh_CN.UTF-8
	""
""endif

" }}}

""""""""""""""""""""""""""""""""""""""""""""
" keybinding
""""""""""""""""""""""""""""""""""""""""""""
"map  <C-V> "+pa<ESC>		"CTRL+V
""map! <C-V> <ESC>"+pa
""map  <C-C> "+y
""map  <C-X> "+x
map  <C-A> ggVG
""map! <C-A> <ESC>ggVG
""map  <C-S> :w<CR>
""map! <C-S> <ESC>:w<CR>a
""map  <C-Z> :u<CR>
""map! <C-Z> <ESC>:u<CR>a
""map  <2-LeftMouse> *
""map! <2-LeftMouse> <c-o>*
map  <C-LeftMouse> <C-]>
""map! <C-LeftMouse> <ESC><C-]>
""map  <Tab> >
""map  <S-Tab> <
""map <C-N> <ESC>:bn<CR>		" 切换到下一个文件
""map <C-P> <ESC>:bp<CR>		" 切换到上一个文件

""
nmap <silent> <F2> :NERDTreeToggle<CR> :TagbarToggle<CR>
nmap <silent> <F3> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""
" Plugin
"""""""""""""""""""""""""""""""""""""""""""""

" authorinfo
let g:vimrc_author='Justice'
let g:vimrc_email='justice_103@126.com'
let g:vimrc_homepage='http://zhuzhengyi.github.com'

" ctrlsf
let g:ctrlsf_auto_close=0
let g:ctrlsf_case_sensitive='no'
let g:ctrlsf_context='-B 5 -A 3'
let g:ctrlsf_default_root='project'

" FencView
let g:fencview_autodetect=1

" indent_guides
"let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

let g:instant_markdown_autostart=1

" NERD_commenter.vim {{{
let NERDShutUP=1
" }}}

" omnicomplete {{{
set ofu=syntaxcomplete#Complete
" }}}

" omnicppcomplete{{{
set completeopt=menu,longest,menuone
let OmniCpp_NamespaceSearch=2
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_ShowAccess=1
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCPP_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCPP_MayCompleteScope=1
let OmniCpp_DefaultNamespaces=["std","__GLIBCXX_STD"]
let OmniCpp_SelectFirstItem=2
let OmniCpp_DisplayMode=1
au CursorMovedI,InsertLeave * if pumvisible() == 0 | silent! pclose|endif
" }}}

" OmniTags
""nmap <silent><Leader>t :OmniTagsLoad ./tags<CR>
""nmap <leader>u :OmniTagsUpdate

" powerline
set laststatus=2
let g:Powerline_symbols='unicode'

" syntastic
let g:syntastic_check_on_open=1
let g:syntastic_cpp_include_dirs=['/usr/include/']

" Gundo
nnoremap <Leader>u :GundoToggle<CR>


" NERDTree
let g:NERDTree_title="[NERD]"
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let g:NERTreeWinPos='right'
function! NERDTree_Start()
	exec 'NERDTree'

endfunction
function! NERDTree_IsValid()
	return 1
endfunction

" winmanager
""let g:winManagerWindowLayout='NERDTree'

" ycm
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter CoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter CoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter CoToDefinitionElseDeclaration<CR>
nmap <leader>ycm :YcmDiags<CR>

" Ctags
" :!ctags -R -f .tags
map <Leader>cs <ESC>:!cscope -Rbkq<CR>
map <Leader>ct <ESC>:!ctags -R -f .tags<CR>
set tags+=./tags,../tags,./*/tags
set tags+=./.tags,../.tags,./*/.tags
set tags+=/usr/include/.tags

" ScrExpl {{{
let g:SrcExpl_winHeight=8
let g:SrcExpl_refreshTime=300
let g:SrcExpl_jumpKey="<ENTER>"
let g:SrcExpl_gobackKey="<SPACE>"
let g:SrcExpl_searchLocalDef=1
let g:SrcExpl_isUpdateTags=0
let g:SrcExpl_updateTagsCmd="ctags --sort=foldcase -R ."
let g:SrcExpl_updateTagsKey="<F12>"
let g:SrcExpl_pluginList = [ 
			\ "__Tag_List__",
			\ "_NERD_tree_",
			\ "Source_Explore"
			\ ]
autocmd FileType c,cpp,cmake nmap <Leader>src :SrcExplToggle<CR>
autocmd FileType c,cpp,cmake nmap <Leader>tag :TagbarToggle<CR>
" }}}

" Tagbar {{{
let g:tagbar_left=0
let g:tagbar_singleclick=1
let g:tagbar_autoshowtag=1
let g:tagbar_show_visibility=1
let g:tagbar_ctags_bin="/usr/bin/ctags"
" }}}

" vim-easy-align {{{
vmap <Enter> <Plug>(EasyAlign)

nmap ga <Plug><EasyAlign>
" }}}


" Taglist
""map <silent> <F4> :TlistToggle<CR>
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = 'name'
let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1
let Tlist_Auto_Open = 0

let g:lt_location_list_toggle_map = '<leader>w'
let g:lt_quickfix_list_toggle_map = '<leader>q'

