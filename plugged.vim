"""""""""""""""""""""""""""""""""""""""""
" vim.rc
"
" author: justice
"
"
"
"""""""""""""""""""""""""""""""""""""""""
" Plug Command:
"
"   安装插件    :PlugInstall
"   清除插件    :PlugClean
"   查找插件    :PlugSearch
"   列出插件    :PlugList
"   更新插件    :PlugUpdate
"
"""""""""""""""""""""""""""""""""""""""""


if !filereadable(expand("~/.vim/autoload/plug.vim"))
    echo "Installing vim-plug."
    execute "silent ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
endif

call plug#begin('~/.vim/plugged/')

" Color Scheme {{{
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
" }}}
"

" Plugs {{{
Plug 'mhinz/vim-startify'                           "个性化启动画面
"Plug 'SuperTab'                                    "Tab补全
"Plug 'AutoComplPop'                                "自动补全
"Plug 'Rip-Rip/clang_complete'
"Plug 'OmniCppComplete'


Plug 'Shougo/neocomplete.vim'                       "自动补全
Plug 'Shougo/neosnippet.vim'                        "代码片段, ctrl+k选择片段
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neopairs.vim'                          "自动生成(),{}等成对符号
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/unite.vim'                             "
Plug 'Shougo/unite-outline'                         "大纲插件, :Unite outline
Plug 'chemzqm/unite-git-log'                        "Unite 查看git log 日志
Plug 'honza/vim-snippets'                           "代码片段

Plug 'scrooloose/syntastic'                         "静态检查
Plug 'tpope/vim-fugitive'                           "git 插件
Plug 'airblade/vim-gitgutter'                       "显示git修改
Plug 'easygit'
Plug 'a.vim', {'for': ['c', 'cpp', 'h', 'hpp']}     "切换头文件 .c <---> .h
Plug 'authorinfo'                                   "作者信息

Plug 'Shougo/vimproc.vim',          {'do': 'make'}
Plug 'Shougo/vimshell.vim'                          "vim shell

Plug 'vim-airline/vim-airline'                      "状态栏
Plug 'vim-airline/vim-airline-themes'               "状态栏主题
Plug 'ntpeters/vim-airline-colornum'                "状态栏

Plug 'jiangmiao/auto-pairs'                         "自动成对生成(),{},[]
Plug 'kien/rainbow_parentheses.vim'                 "彩色括号
Plug 'ppwwyyxx/vim-PinyinSearch'                    "拼音搜中文
Plug 'bronson/vim-trailing-whitespace'              "行尾空格, <CTRL+SPACE>

Plug 'ctrlpvim/ctrlp.vim'                           "快速查找文件, ctrl+p
Plug 'jasoncodes/ctrlp-modified.vim'                "快速查找修改文件, ctrl+p
Plug 'tacahiroy/ctrlp-funky'                        "快速查找函数, <leader>fu
Plug 'dyng/ctrlsf.vim'                              "全局单词查找, ctrl+f f
Plug 'rking/ag.vim'                                 "查找

Plug 'sjl/gundo.vim'                                "撤销操作
Plug 'mbbill/undotree'
Plug 'terryma/vim-expand-region'                    "区域选择, +/-改变选取大小
Plug 'vim-scripts/taghighlight'                     "高亮符号,宏
Plug 'majutsushi/tagbar'                            "符号列表

Plug 'scrooloose/nerdtree',         {'on': 'ToggleNERDTree'}
Plug 'Xuyuanp/nerdtree-git-plugin', {'on': 'ToggleNERDTree'}
Plug 'janlay/NERD-tree-project',    {'on': 'ToggleNERDTree'}
Plug 'scrooloose/nerdcommenter'               "代码注释, <leader> c<space>

Plug 'matchit.zip',                 {'for': ['html', 'xml']}      "在成对标签间跳转

Plug 'cespare/vim-golang',          {'for': ['golang']}
Plug 'fatih/vim-go',                {'for': ['golang']}     "go插件
Plug 'dgryski/vim-godef',           {'for': ['golang']}
Plug 'Blackrush/vim-gocode',        {'for': ['golang']}     "go自动补全

Plug 'davidhalter/jedi-vim',        {'for': ['python']}     "python complete
Plug 'nvie/vim-flake8',             {'for': ['python']}     "python flake8
Plug 'python.vim',                  {'for': ['python']}
Plug 'python_fold',                 {'for': ['python']}
Plug 'django.vim',                  {'for': ['python']}

Plug 'instant-markdown.vim',        {'for': ['markdown']}
Plug 'plasticboy/vim-markdown',     {'for': ['markdown']}

Plug 'Javascript-Indentation',      {'for': ['javascript']}
Plug 'pangloss/vim-javascript',     {'for': ['javascript']}
Plug 'JavaScript-syntax',           {'for': ['javascript']}
Plug 'jsbeautify',                  {'for': ['javascript']}
""Plug 'jsruntime.vim',             {'for', ['javascript']}

Plug 'rust-lang/rust.vim',          {'for': ['rust']}

Plug 'c9s/perlomni.vim',            {'for': ['perl']}   "perl omnicomplete
Plug 'omniperl',                    {'for': ['perl']}
Plug 'lua_omni',                    {'for': ['lua']}
Plug 'OmniTags'
Plug 'vimomni'
Plug 'ekalinin/Dockerfile.vim',     {'for': ['dockerfile']}               "Docker
Plug 'vimcn/vimcdoc'                          "中文帮助文档
"Plug 'vimim/vimim'                            "输入法
Plug 'auto_mkdir'
Plug 'cecutil'
Plug 'comments.vim'
"Plug 'vim-commentary'
Plug 'confluencewiki.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'terryma/vim-multiple-cursors'           "多光标替换 <CTRL-n>
Plug 'tpope/vim-surround'                     "标签替换, cs{'
Plug 'xuhdev/SingleCompile'                   "自动编译插件
"Plug 'klen/python-mode'
"Plug 'cscope.vim'
Plug 'css_color.vim'
Plug 'c.vim'
"Plug 'checksyntax'
"Plug 'lilydjwg/colorizer'
"Plug 'wincent/command-t'
Plug 'DfrankUtil'
Plug 'DoxygenToolkit.vim'
Plug 'EasyGrep'
"Plug 'EasyMotion'                             " 快速跳转
Plug 'easymotion/vim-easymotion'
Plug 'exvim/main'
Plug 'FencView.vim'                           "文件代码自动检测
Plug 'fcitx.vim'
Plug 'FuzzyFinder'
Plug 'edkolev/promptline.vim'
Plug 'Gist.vim'
Plug 'gitv'
"Plug 'grep.vim'
"Plug 'jslint.vim'
"Plug 'html5.vim'
"Plug 'IndentAnything'
"Plug 'Yggdroot/indentLine'
"Plug 'axiaoxin/vim-json-line-format'
"Plug 'Markdown'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'asciidoc.vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'L9'
"Plug 'less-syntax'
Plug 'less.vim'
Plug 'mako.vim--Torborg'
"Plug 'Mark'
"Plug 'minibufexpl.vim'
Plug 'severin-lemaignan/vim-minimap', {'on': 'MinimapToggle'}
Plug 'moin.vim'
Plug 'mru.vim'
Plug 'restart.vim'
Plug 'ack.vim'
Plug 'ShowPairs'
"Plug 'ShowTrailingWhitespace'
Plug 'sourcebeautify.vim'
Plug 'SrcExpl'
" Plug 'STL-improved'
Plug 'SudoEdit.vim'
Plug 'mattn/emmet-vim'                  " html
Plug 'Tabular'
Plug 'TaskList.vim'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-abolish'
Plug 'aperezdc/vim-template'
Plug 'Valloric/ListToggle'
"Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
"Plug 'vim-scripts/vcscommand.vim'
"Plug 'Vimpress'
Plug 'vimwiki'
Plug 'vim-cpp-auto-include'
Plug 'junegunn/vim-easy-align'
Plug 'vimprj'
"Plug 'vim-templates'
Plug 'VOoM'                             " outline
Plug 'WebAPI.vim'
Plug 'winmanager'
Plug 'xmledit'
Plug 'xml.vim'
Plug 'ZenCoding.vim'
Plug 'mhinz/vim-signify'

call plug#end()
" }}}


filetype plugin indent on
syntax enable                           "支持语法高亮

" ColorScheme {{{
set background=dark                     "设置主题整体为暗色调
"highlight clear SignColumn
highlight clear LineNr

set cursorline
set cursorcolumn
"hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=darked guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=darked guifg=white
""highlight Pmenu guibg=darkgrey guifg=black
""highlight PmenuSel guibg=lightgrey guifg=black
" }}}
" Solarized ColorScheme {{{
if isdirectory(expand("~/.vim/plugged/vim-colors-solarized/"))
    let g:solarized_termtrans  = 1
    let g:solarized_hitrail    = 1
    let g:solarized_termcolors = 256
    "colorscheme solarized
endif
" }}}

" molokai {{{
if isdirectory(expand("~/.vim/plugged/molokai"))
    "let g:molokai_original = 1
    let g:rehash256 = 1
    colorscheme molokai
endif
" }}}

syntax on                       "开启语法高亮
" font && encoding {{{
set guifont=monaco\ 11          " 默认字体
set fileformats=unix,dos,mac    " 支持文本格式
set fileformat=unix             " 默认文本格式
" 支持文件编码
set fileencodings=utf-8,ucs-bom,chinese,cp936,gbk,gb18030,big5,latin1
set fileencoding=utf-8          " 默认文件编码
set encoding=utf-8              " 默认显示编码
let &termencoding=&encoding
if has("win32") && has("gui_running")
    language message zh_CN.UTF-8
    set background=light             "设置主题整体为暗色调
endif
" }}}


" genaral settings {{{
"set autochdir                   "
set autoindent                  " 自动缩进
set smartindent                 " 智能缩进
set hlsearch                    " 高亮搜索结果
set incsearch                   " 开启实时搜索
set nobackup                    " 不生成备份文件
set nowrapscan                  "
set writebackup                 "
set number                      " 显示行号
set relativenumber              " 显示相对行号
set showmatch                   " 显示配对匹配
set ruler                       " 显示光标位置
set nocp                        " 关闭vi兼容模式
set expandtab                   " 将tab转换为空格
set autoread

set t_Co=256                    "
set ambiwidth=double            "
set backspace=2                 "
set tabstop=4                   " tab键空格数
set shiftwidth=4                "
set cindent shiftwidth=4        "
set cmdheight=2                 " 命令行高度
set laststatus=2                " 开启状态栏
set foldmethod=indent           " 设置折叠模式(缩进)
set foldlevel=5
set mouse=a                     ""
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*.o,*.obj,*.pyc,build/,.git
" }}}


""""""""""""""""""""""""""""""""""""""""""""
" keybinding
""""""""""""""""""""""""""""""""""""""""""""
"map  <C-V> "+pa<ESC>       "CTRL+V 粘贴
"map! <C-V> <ESC>"+pa
"map  <C-C> "+y
"map  <C-X> "+x
nmap  <C-A> ggVG             " CTRL+A 全选
map! <C-A> <ESC>ggVG
"map  <C-S> :w<CR>
"map! <C-S> <ESC>:w<CR>a
"map  <C-Z> :u<CR>
"map! <C-Z> <ESC>:u<CR>a
"map  <C-LeftMouse> <C-]>    " 鼠标左键跳转到函数定义处
"map! <C-LeftMouse> <ESC><C-]>
"map  <2-LeftMouse> *
"map! <2-LeftMouse> <c-o>*
"imap  <Tab> >
"imap  <S-Tab> <
"map <C-N> <ESC>:bn<CR>         " 切换到下一个文件
"map <C-P> <ESC>:bp<CR>         " 切换到上一个文件


noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" 选择模式
vnoremap <Tab>      >gv         " Tab缩进
vnoremap <S-Tab>    <gv         " S-Tab反缩进

imap ;; <ESC>:w<CR>             " 返回Normal模式 "

"nmap <silent> <F3> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""
" Plug Setting
"""""""""""""""""""""""""""""""""""""""""""""

" authorinfo {{{
if isdirectory(expand("~/.vim/plugged/authorinfo"))
    let g:vimrc_author   = 'xxx'
    let g:vimrc_email    = 'xxx@xxx.com'
    let g:vimrc_homepage = 'http://xxx.com'
endif
" }}}

" vim-expand-region {{{
if isdirectory(expand("~/.vim/plugged/vim-expand-region/"))
    vmap v <Plug>(expand_region_expand)
    vmap V <Plug>(expand_region_shrink)
endif
" }}}

 "vim-trailing-whitespace {{{
if isdirectory(expand("~/.vim/plugged/vim-trailing-whitespace"))
    map <leader><space> :FixWhitespace<cr>
endif
" }}}


" SingleCompile {{{
if isdirectory(expand("~/.vim/plugged/SingleCompile/"))
     nmap <F9> :SCCompile<cr>
     nmap <F10> :SCCompileRun<cr>
endif
" }}}


" easymotion {{{
if isdirectory(expand("~/.vim/plugged/vim-easymotion"))
    let g:EasyMotion_smartcase = 1          " 忽略大小写
    let g:EasyMotion_cursor_highlight = 1
    " 更改快捷键
    map f <Plug>(easymotion-prefix)
    map ff <Plug>(easymotion-s)
    map fs <Plug>(easymotion-f)
    map fl <Plug>(easymotion-lineforward)
    map fj <Plug>(easymotion-j)
    map fk <Plug>(easymotion-k)
    map fh <Plug>(easymotion-linebackward)
endif
" }}}

" neosnips {{{
if isdirectory(expand("~/.vim/plugged/neosnippet.vim"))
    " Plug key-mappings.
    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    "xmap <C-k>     <Plug>(neosnippet_expand_target)

    " SuperTab like snippets behavior.
    imap <expr><TAB>
        \ pumvisible() ? "\<C-n>" :
        \ neosnippet#expandable_or_jumpable() ?
        \   "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \   "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

    " For conceal markers.
    if has('conceal')
        set conceallevel=2 concealcursor=niv
    endif

    " Enable snipMate compatibility feature.
    let g:neosnippet#enable_snipmate_compatibility = 1

    " Tell Neosnippet about the other snippets
    let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'
endif
" }}}

" vim-startify {{{
if isdirectory(expand("~/.vim/plugged/vim-startify"))
    let g:startify_custom_header = ['vim startify:']
    let g:startify_list_order = [
            \ ['   Sessions:'],
            \ 'sessions',
            \ ['   Recent files'],
            \ 'files',
            \ ['   Recently directory:'],
            \ 'dir',
            \ ['   Bookmarks:'],
            \ 'bookmarks',
            \ ]
endif
" }}}

" rainbow_parentheses {{{
if isdirectory(expand("~/.vim/plugged/rainbow_parentheses.vim"))
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
        \ ['black',       'SeaGreen3'],
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
endif
" }}}

" jedi-vim {{{
if isdirectory(expand("~/.vim/plugged/jedi-vim"))
    let g:jedi#popup_select_first = 0
    let g:jedi#auto_vim_configuration = 0
    let g:jedi#popup_on_dot = 0
endif
" }}}

" vim-flake8 {{{
if isdirectory(expand("~/.vim/plugged/vim-flake8"))
    if ! executable('flake8')
        execute 'silent ! apt-get install flake8 -f'
    endif
    let g:flake8_ignore="E501,E221,W293"
endif
" }}}

" neocomplete {{{
if isdirectory(expand("~/.vim/plugged/neocomplete.vim"))
    "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

    " Define dictionary.
    let g:neocomplete#sources#dictionary#dictionaries = {
        \ 'default' : '',
        \ }
        "\ 'vimshell' : $HOME.'/.vimshell_hist',
        "\ 'scheme' : $HOME.'/.gosh_completions'


    " Define keyword.
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'

    " Plug key-mappings.
    inoremap <expr><C-g>     neocomplete#undo_completion()
    inoremap <expr><C-l>     neocomplete#complete_common_string()

    " Recommended key-mappings.
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
      "return neocomplete#close_popup() . "\<CR>"
      " For no inserting <CR> key.
      return pumvisible() ? neocomplete#close_popup() : "\<CR>"
    endfunction

    " <TAB>: completion.
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><C-y>  neocomplete#close_popup()
    inoremap <expr><C-e>  neocomplete#cancel_popup()

    " Close popup by <Space>.
    "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

    " For cursor moving in insert mode(Not recommended)
    "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
    "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
    "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
    "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
    " Or set this.
    "let g:neocomplete#enable_cursor_hold_i = 1
    " Or set this.
    "let g:neocomplete#enable_insert_char_pre = 1

    " AutoComplPop like behavior.
    let g:neocomplete#enable_auto_select = 0

    " Shell like behavior(not recommended).
    "set completeopt+=longest
    "let g:neocomplete#enable_auto_select = 1
    "let g:neocomplete#disable_auto_complete = 1
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#enable_camel_case = 1
    let g:neocomplete#enable_fuzzy_completion = 1
    "let g:neocomplete#data_directory = s:get_cache_dir("neocomplete")
    let g:neocomplete#enable_auto_delimiter = 1
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#auto_completion_start_length = 2
    let g:neocomplete#manual_completion_start_length = 0
    let g:neocomplete#min_keyword_length = 3
    let g:neocomplete#sources#buffer#disabled_pattern = '\.log\|\.log\.\|.*quickrun.*\|\.cnx\|Log.txt\|\.user.js'
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*\|\*unite\*\|Command Line'
    let g:neocomplete#sources#buffer#cache_limit_size = 300000
    let g:neocomplete#fallback_mappings = ["\<C-x>\<C-o>", "\<C-x>\<C-n>"]

    "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

    " Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType python setlocal omnifunc=jedi#completions
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    " Enable heavy omni completion.
    if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
    endif
    let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
    let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    let g:neocomplete#sources#omni#input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
    let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

endif
" }}}

" ag {{{
if isdirectory(expand("~/.vim/plugged/ag.vim"))
    let g:ackprg = 'ag --nogroup--nocolor --column'
    if ! executable('ag')
        execute "silent ! apt-get install silversearcher-ag"
    endif
endif
" }}}

" ctrlsf {{{
if isdirectory(expand("~/.vim/plugged/ctrlsf.vim"))
    let g:ctrlsf_auto_close     = 1
    let g:ctrlsf_case_sensitive = 'no'
    let g:ctrlsf_context        = '-B 1 -A 1'
    let g:ctrlsf_default_root   = 'project'
    let g:ctrlsf_position       = 'right'
    nmap <C-F>f <Plug>CtrlSFPrompt
    vmap <C-F>f <Plug>CtrlSFVwordPath<CR>
    vmap <C-F>F <Plug>CtrlSFVwordExec
    nmap     <C-F>n <Plug>CtrlSFCwordPath
    nmap     <C-F>p <Plug>CtrlSFPwordPath
    nnoremap <C-F>o :CtrlSFOpen<CR>
    nnoremap <C-F>t :CtrlSFToggle<CR>
    inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
endif
" }}}

" ctrlp {{{
if isdirectory(expand("~/.vim/plugged/ctrlp.vim/"))
    let g:ctrlp_map               = '<c-p>'
    let g:ctrlp_cmd               = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_follow_symlinks   = 1

    ""map <Leader>f :CtrlPMRU<CR>
    ""nnoremap <silent> <D-t> :CtrlP<CR>
    ""nnoremap <silent> <D-r> :CtrlPMRU<CR>
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](node_modules|coverage|target|dist|tmp|build)|(\.(swp|ico|git|svn))$',
        \ 'file': '\v\.(exe|so|dll|swp|zip|tar|tar.gz|tar.bz2|pyc|o|obj)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }

    if executable('ag')
        let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
    elseif executable('ack-grep')
        let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
    elseif executable('ack')
        let s:ctrlp_fallback = 'ack %s --nocolor -f'
    else
        let s:ctrlp_fallback = 'find %s -type f'
    endif
    let g:ctrlp_user_command = {
        \ 'types': {
            \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
            \ 2: ['.hg', 'hg --cwd %s locate -I .'],
        \ },
        \ 'fallback': s:ctrlp_fallback
    \ }

    if isdirectory(expand("~/.vim/plugged/ctrlp-funky/"))
        " CtrlP extensions
        let g:ctrlp_extensions = ['funky']
        let g:ctrlp_funky_syntax_highlight = 1
        nnoremap <Leader>fu :CtrlPFunky<CR>
        nnoremap <Leader>fu :execute 'CtrlPFunky ' . expand('<cword>')<CR>
    endif
endif
" }}}


" ctrlp-modified {{{
if isdirectory(expand("~/.vim/plugged/ctrlp-modified"))
    map <Leader>m :CtrlPModified<CR>
    map <Leader>M :CtrlPBranch<CR>
endif
" }}}


" DoxygenToolkit {{{
if isdirectory(expand("~/.vim/plugged/DoxygenToolkit.vim/"))
    let g:DoxygenToolkit_authorName = "authorname"
    let g:DoxygenToolkit_licenseTag = "license"
endif
" }}}

" clang_complete {{{
if isdirectory(expand("~/.vim/plugged/clang_complete"))
    let g:clang_auto_select        = 1
    let g:clang_complete_auto      = 1
    let g:clang_complete_copen     = 1
    let g:clang_complete_hl_errors = 1
    let g:clang_periodic_quickfix  = 1
    let g:clang_snippets           = 1
    let g:clang_close_preview      = 1
    let g:clang_use_library        = 1
    let g:clang_user_options       = '-stdlib   = libc++ -std = c++11 -IIncludePath'
    let g:clang_library_path       = "/usr/lib"
endif
" }}}

" FencView {{{
if isdirectory(expand("~/.vim/plugged/FencView.vim"))
    let g:fencview_autodetect=1
endif
" }}}

" indent-guides
if isdirectory(expand("~/.vim/plugged/vim-indent-guides"))
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size            = 1
    let g:indent_guides_auto_colors           = 0
    let g:instant_markdown_autostart          = 0
    "autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
    "autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
endif


" Minimap {{{
if isdirectory(expand("~/.vim/plugged/vim-minimap"))
    let g:minimap_highligh='Visual'
endif
" }}}


" omnicomplete {{{
if isdirectory(expand("~/.vim/plugged/omnicomplete"))
    set ofu=syntaxcomplete#Complete
endif
" }}}

" omnicppcomplete{{{
if isdirectory(expand("~/.vim/plugged/omnicppcomplete"))
    set completeopt                 = menu,longest,menuone
    let OmniCpp_NamespaceSearch     = 2
    let OmniCpp_GlobalScopeSearch   = 1
    let OmniCpp_ShowAccess          = 1
    let OmniCpp_ShowPrototypeInAbbr = 1
    let OmniCPP_MayCompleteDot      = 1
    let OmniCpp_MayCompleteArrow    = 1
    let OmniCPP_MayCompleteScope    = 1
    let OmniCpp_DefaultNamespaces   = ["std","__GLIBCXX_STD"]
    let OmniCpp_SelectFirstItem     = 2
    let OmniCpp_DisplayMode         = 1
    au CursorMovedI,InsertLeave * if pumvisible() == 0 | silent! pclose|endif
endif
" }}}

" OmniTags {{{
if isdirectory(expand("~/.vim/plugged/OmniTags"))
    ""nmap <silent><Leader>t :OmniTagsLoad ./.tags<CR>
    ""nmap <leader>u :OmniTagsUpdate
endif
" }}}

" airline {{{
if isdirectory(expand("~/.vim/plugged/vim-airline"))
    let g:airline_theme                      = 'dark'
    "let g:airline_section_y                  = '%{strftime("%F %a %R")}'
    "let g:airline_section_b                  = 'BN: %{bufnr("%")}'
    if !exists('g:airline_symbols')
        let g:airline_symbols                = {}
    endif
    let g:airline_left_sep                   = '▶'
    let g:airline_left_alt_sep               = '❯'
    let g:airline_right_sep                  = '◀'
    let g:airline_right_alt_sep              = '❮'
    let g:airline_symbols.linenr             = '¶'
    let g:airline_symbols.branch             = '⎇'

    " 是否打开tabline
    let g:airline#extensions#tabline#enabled = 1
endif
" }}}


" Syntastic {{{
if isdirectory(expand("~/.vim/plugged/syntastic/"))
    "set statusline                          += %#warningmsg#
    "let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list            = 1
    let g:syntastic_check_on_open            = 1
    let g:syntastic_check_on_wq              = 1
    let g:syntastic_cpp_compiler             = 'clang++'
    let g:syntastic_cpp_compiler_options     = '-std=c++11 -stdlib=libc++'
    let g:syntastic_error_symbol             = 'X'
    let g:syntastic_warning_symbol           = '*'
    "let g:syntastic_enable_balloons          = 1
    let g:syntastic_cpp_include_dirs         = ['/usr/include/c++/v1','/usr/include/c++/4.8','/usr/include']

    let g:syntastic_javascript_checkers      = ['jshint']
    let g:syntastic_go_checkers              = ['golint']
    let g:syntastic_python_checkers           = ['flake8']
    let g:syntastic_python_flake8_quiet_messages = {
            \ "regex": '\m\[E221|E901]',
        \ }
endif
" }}}

" Gundo {{{
if isdirectory(expand("~/.vim/plugged/gundo.vim"))
    nnoremap <Leader>u :GundoToggle<CR>
endif
" }}}

" NERDTree {{{
if isdirectory(expand("~/.vim/plugged/nerdtree"))
    let g:NERDTree_title      = "[NERD]"
    let g:NERTreeWinPos       = 'left'
    let g:NERDTreeIgnore      = ['\~$','\.o$','\.obj$','\.git','\.pyc$','\.so$','\.exe$','\.lib$']
    let g:NERDTreeChDirMode   = 2
    let NERDTreeShowBookmarks = 1
    let NERDTreeShowFiles     = 1
endif
" }}}

" NERD-tree-project {{{
if isdirectory(expand("~/.vim/plugged/NERD-tree-project"))
    nmap <silent> <F2> :ToggleNERDTree<CR>
endif
" }}}

" NERD_commenter.vim {{{
if isdirectory(expand("~/.vim/plugged/NERD_commenter"))
    let NERDShutUP=1
endif
" }}}

" winmanager  {{{
if isdirectory(expand("~/.vim/plugged/NERDTree"))
    ""let g:winManagerWindowLayout='NERDTree'
endif
" }}}


" ycm
if isdirectory(expand("~/.vim/plugged/YouCompleteMe/"))
    let g:ycm_error_symbol = '>>'
    let g:ycm_warning_symbol = '>*'
    nnoremap <leader>gl :YcmCompleter CoToDeclaration<CR>
    nnoremap <leader>gf :YcmCompleter CoToDefinition<CR>
    nnoremap <leader>gg :YcmCompleter CoToDefinitionElseDeclaration<CR>
    nmap <leader>ycm :YcmDiags<CR>
endif

" Ctags {{{
if isdirectory(expand("~/.vim/plugged/ctags/"))
    " :!ctags -R -f .tags
    map <Leader>cs <ESC>:!cscope -Rbkq<CR>
    map <Leader>ct <ESC>:!ctags -R -f .tags<CR>
    set tags+=./tags,../tags,./*/tags
    set tags+=./.tags,../.tags,./*/.tags
    set tags+=/usr/include/.tags,/usr/include/c++/4.8/.tags
endif
" }}}

" ScrExpl {{{
if isdirectory(expand("~/.vim/plugged/SrcExpl"))
    let g:SrcExpl_winHeight=8
    let g:SrcExpl_refreshTime=300
    let g:SrcExpl_jumpKey="<ENTER>"
    let g:SrcExpl_gobackKey="<SPACE>"
    let g:SrcExpl_searchLocalDef=1
    let g:SrcExpl_isUpdateTags=1
    let g:SrcExpl_updateTagsCmd="ctags --sort=foldcase -R ."
    let g:SrcExpl_updateTagsKey="<F12>"
    let g:SrcExpl_pluginList = [
                \ "__Tag_List__",
                \ "_NERD_tree_",
                \ "Source_Explore"
                \ ]
    ""autocmd FileType c,cpp,cmake nmap <Leader>src :SrcExplToggle<CR>
    ""autocmd FileType c,cpp,cmake nmap <Leader>tag :TagbarToggle<CR>
endif
" }}}

" golang {{{
if isdirectory(expand("~/.vim/plugged/vim-golang/"))
    if ! executable('gocode')
        execute "silent ! go get -u github.com/nsf/gocode"
    endif
    if ! executable('godef')
        execute "silent ! go get -u github.com/rogpeppe/godef"
    endif
    if ! executable('gotags')
        execute "silent ! go get -u github.com/jstemmer/gotags"
    endif
endif
" }}}

" Tagbar {{{
if isdirectory(expand("~/.vim/plugged/tagbar"))
    nmap <silent> <F3> :TagbarToggle<CR>
    let g:tagbar_left=0
    let g:tagbar_singleclick=1
    let g:tagbar_autoshowtag=1
    let g:tagbar_show_visibility=1
    let g:tagbar_ctags_bin="/usr/bin/ctags"
    let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
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
            \ 'f:functions',
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype',
        \ },
        \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n',
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent',
        \ }
endif
" }}}

" vim-easy-align {{{
if isdirectory(expand("~/.vim/plugged/vim-easy-align/"))
    if !exists('g:easy_align_delimiters')
        let g:easy_align_delimiters = {}
    endif
    let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }
    vmap <Leader>a <Plug>(EasyAlign)
    nmap <Leader>a <Plug>(EasyAlign)
endif
" }}}

" ListToggle  {{{
if isdirectory(expand("~/.vim/plugged/ListToggle/"))
    let g:lt_location_list_toggle_map = '<leader>w'
    let g:lt_quickfix_list_toggle_map = '<leader>q'
endif
" }}}

