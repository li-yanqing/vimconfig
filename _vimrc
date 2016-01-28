set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vimconfig/vundle/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"""----------------------------------------------------------------------------------------
Plugin 'SuperTab'
"Plugin 'EasyGrep'
Plugin 'VimExplorer'

"Plugin 'ianva/vim-youdao-translater'
Plugin 'FuDesign2008/translator.vim'

"Plugin 'The-NERD-tree'
"Plugin 'mru.vim'
Plugin 'quickrun.vim'
Plugin 'taglist.vim'
Plugin 'vim-misc'
Plugin 'myusuf3/numbers.vim'

Plugin 'phpcomplete.vim'

Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'

Plugin 'vim-scripts/notes.vim'

Plugin 'vim-scripts/togglenumber'
Plugin 'vim-airline'

Plugin 'matchit.zip'
Plugin 'YankRing.vim'
Plugin 'EasyMotion'

Plugin 'terryma/vim-multiple-cursors'
"Plugin 'terryma/vim-smooth-scroll'

Plugin 'rking/ag.vim'

Plugin 'dhruvasagar/vim-table-mode'

"Plugin 'vim-scripts/AutoClose'

Plugin 'vim-easy-align'
Plugin 'HTML-AutoCloseTag'
Plugin 'DBGPavim'
Plugin 'L9'
Plugin 'phpfolding.vim'
Plugin 'FuzzyFinder'
"Plugin 'ShowMarks'
Plugin 'VOoM'
Plugin 'SearchComplete'
"Plugin 'vimwiki'
Plugin 'tpope/vim-repeat'
Plugin 'jsbeautify'
Plugin 'surround.vim'
"Plugin 'Quramy/vison'

Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'

Plugin 'aquach/vim-http-client'
Plugin 'kien/ctrlp.vim'
"Plugin 'Decho'
"Plugin 'vimshell-ssh'    
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
"Plugin 'vim-scripts/Conque-Shell'

Plugin 'VisIncr'
Plugin 'auto_mkdir'


"Plugin 'Markdown'
Plugin 'Markdown-syntax'
Plugin 'xml.vim'

Plugin 'The-NERD-Commenter'
Plugin 'luochen1990/rainbow'

Plugin 'Gundo'

"Plugin 'mikelue/vim-maven-plugin'

Plugin 'JavaDecompiler.vim'

Plugin 'airblade/vim-rooter'

"Plugin 'artur-shaik/vim-javacomplete2'
"Plugin 'msanders/snipmate.vim'
Plugin 'Java-Syntax-and-Folding'

Plugin 'luochen1990/select-and-search'

Plugin 'Mark'

Plugin 'itchyny/calendar.vim'
Plugin 'itchyny/thumbnail.vim'

"filetype log(log4j) and javalog(java exception)
Plugin 'sxinle/vim-log-syntax'


"Plugin 'MikeCoder/markdown-preview.vim'
"Plugin 'vim-scripts/auto_autoread.vim'

Plugin 'chrisbra/vim-diff-enhanced'

Plugin 'li-yanqing/vim-json-line-format' 

"color
Plugin 'dw_colors'
Plugin 'vim-scripts/xoria256.vim'
Plugin 'Color-Sampler-Pack'
Plugin 'ScrollColors'
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
"""----------------------------------------------------------------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
let mapleader = ","
set relativenumber

set encoding=utf-8
set fileencodings=utf-8,gbk
set nowrap
autocmd BufReadPost * set noswapfile

set directory=$TEMP

set sm "match the { or ( or [
set ai "auto align
set sw=4 "tab length
syntax on 
set textwidth=0 "maxlength of line
set conceallevel=2 "for json format
set autoread "auto load file change

set nobackup "don't backup file
set undofile  "Open Persistent Undo
set undodir=$HOME/\_undodir
set undolevels=1000  "how many operation could be undone

set tabstop=4 "tab to space
set expandtab
set linespace=1
set ve=all
"set autochdir  "auto change to current folder
set guifont=YaHei\ Consolas\ Hybrid:h12
set ignorecase smartcase
set incsearch
set autoindent

"auto change dir to current dir
"au BufRead,BufNewFile * cd %:p:h


""map <F5> <Esc>:tabnew<cr>
""map <F4> <Esc>:tabclose<cr>
""map <F2> <Esc>:tabprevious<cr>
""map <F3> <Esc>:tabnext<cr>

"custom operation{{{

"Disable q: but let 'q' not quickly
"map q: <Nop>

nnoremap mx <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
map <c-F11> <C-W>_<C-W><Bar>
noremap <Leader>q <Esc>:q<cr>
noremap <Leader><leader>q <Esc>:tabclose<cr>
noremap <Leader>Q <Esc>:q!<cr>


map <C-t> <Esc>:tabnew<cr>
map <C-u> <Esc>:tabnext<cr>
map <C-y> <Esc>:tabprevious<cr>
imap <C-t> <Esc>:tabnew<cr>
imap <C-u> <Esc>:tabnext<cr>
imap <C-y> <Esc>:tabprevious<cr>

"format json
"map <Leader><Leader>fj  !python -m json.tool<CR>
"format xml
map <Leader><Leader>fx  !xmllint --format --recover - 2>/dev/null <CR>

"remove space 
map <Leader><Leader>ks  :s/\s\+/ /g<CR>
map <Leader><Leader>kS  :s/\s\+//g<CR>
"Transform path sperator
map <Leader><Leader>kp  :s/\\/\//g<CR>
map <Leader><Leader>kP  :s/\\/\\\\/g<CR>

"base64 encode
"map <Leader><Leader>be  y<Esc>gv:!base64 <CR>kp
"map <Leader><Leader>bd  !base64 -d -i <CR>
nnoremap <leader><leader>be :python base64_encode_append()<CR>
nnoremap <leader><leader>bd :python base64_decode_append()<CR>


nnoremap <M-d> <c-f>
nnoremap <M-f> <c-b>

nnoremap Y y$
nnoremap U <Esc>:redo<CR>
map ;/ <Esc>:nohlsearch<cr>
nnoremap ;ft <Esc>:set filetype=

"select a word
nnoremap <Space> <Esc>viw
"select more words
vnoremap <Space> e
"save file
nnoremap <Leader>s <Esc>:w<cr>
"wrap
nnoremap ;w  :call ToggleWrap()<cr>
function! ToggleWrap()
    set wrap!
    let wrap = &wrap
    echo wrap
    if(wrap)
        noremap j gj
        noremap k gk
    else
        unmap j
        unmap k
    endif
endfunction

"menu
nnoremap ;m <Esc>:set guioptions+=m<cr>
nnoremap ;;m <Esc>:set guioptions-=m<cr>

"rainbow
nnoremap ;r <Esc>:RainbowToggle<cr>

"refresh file
nnoremap <Leader>r <Esc>:e<cr>

"nmap gc V,r<c-h>:4<cr>f{i<cr><esc>Vy<c-l>p  
"nmap gc V,r<c-h>:3<cr>f{i<cr><esc>V,,fj
"nmap gc 10I#<esc>yss"Iecho <esc>
"nmap gc V,r<c-h>V,,fj<esc>
nmap gc V,r

"unused keys
map ZZ <nop>
map <s-Space> <nop>

"for window nav
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

inoremap <C-J> <esc><C-W>j
inoremap <C-K> <esc><C-W>k
inoremap <C-H> <esc><C-W>h
inoremap <C-L> <esc><C-W>l

nmap <c-left> <c-w><
nmap <c-right> <c-w>>
nmap <c-up> <c-w>+
nmap <c-down> <c-w>-

"print custom pattern
nnoremap  <Leader>gl  <esc>:vimgrep! /start \w\+Transform/ %:p<cr>:copen<cr>


if has('win32')
    "copy file name
    nmap ;pf :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
    "copy file name and path
    nmap ;pp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

    " Open the folder containing the currently open file. Escape properly for Windows cmd shell.
    nnoremap <silent> <C-F5> :if expand("%:p:h") != "" \| exec "!start explorer.exe" shellescape(expand("%:p:h")) \| endif<CR>
else
    nmap ;pf :let @*=expand("%")<CR>
    nmap ;pp :let @*=expand("%:p")<CR>
endif

"}}}custom operation




"color scheme
"colorscheme desert
colorscheme desertEx
"colorscheme molokai
"colorscheme desert256
"colorscheme xoria256 
"colorscheme eclipse 
"colorscheme moria 
"colorscheme calmbreeze


"for interface
"set guioptions-=T "tool bar
"set guioptions+=m "menu
"set guioptions+=e "Tab line
set guioptions-=e "Tab line
"set guioptions+=b "bottom splide


set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" not menu and bar
set guioptions-=m
set guioptions-=T

" show status always
set laststatus=2
" show current cursors
set ruler
" show line number
set number
" highlight search result
set hlsearch

"Gundo
set undofile
set undodir=$HOME/_gundo/
noremap ,u <esc>:GundoToggle<cr>

"vim-smooth-scroll
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 20, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 20, 4)<CR>


"Ag
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
endif
"configure ag.vim to always start searching from your project root instead of the cwd
let g:ag_prg="ag --vimgrep --smart-case"
let g:ag_working_path_mode="r"
let g:ag_highlight=1
nnoremap <silent> <Leader>vv  <Esc>:Ag! <cword><cr>
nnoremap <silent> <Leader>vf  <Esc>:AgFile! <cword><cr>
"vnoremap \fv  :call SeachSelectInFile()<cr>

"function! SeachSelectInFile()  range
    "let w = select_and_search#get_selected_text()
    "echo w
"endfunction





"EasyGrep
"let g:EasyGrepRecursive = 1
"let g:EasyGrepOpenWindowOnMatch=0
"let g:EasyGrepFilesToExclude = "*.class, *.jar, *.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"
"let g:EasyGrepCommand=1


"vim-http-client
let http_client_bind_hotkey=0
silent! nnoremap <unique> <Leader><Leader>tt :HTTPClientDoRequest<cr>

"thumbnail
noremap <Leader>t <esc>:Thumbnail<cr>i


"vim-multiple-cursors
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
    if exists(':NeoCompleteLock')==2
        exe 'NeoCompleteLock'
    endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
    if exists(':NeoCompleteUnlock')==2
        exe 'NeoCompleteUnlock'
    endif
endfunction

"Calendar
nnoremap <silent> <Leader><Leader>ca  <Esc>:Calendar<cr>


"numbers.vim
nnoremap ;n :NumbersToggle<CR>


"QuickRun
nmap <Leader><Leader>r <Esc>:QuickRun<cr>
vmap <Leader><Leader>r :QuickRun bash<cr>
let g:quickrun_config = {}
let g:quickrun_config.markdown = {
            \ 'type': 'markdown/pandoc',
            \ 'command' : 'E:/programs/Markdown/MarkdownEditor.exe',
            \ 'exec' : '%c %s',
            \ 'outputter':'null'
            \ }  

"select & search
let g:select_and_search_active = 3

"vim-json-line-format
nnoremap <leader><Leader>fj :python json_line_format_write()<CR>
nnoremap <leader><Leader>fp :python json_line_format_print()<CR>

"rainbow
let g:rainbow_active=1

"SuperTab
let g:SuperTabRetainCompletionType = 0 
"let g:SuperTabDefaultCompletionType = '<c-x><c-u>'

"translator.vim
nnoremap <leader>tr :TranCursor<CR>
vnoremap <leader>tr :TranCursor<CR>
nnoremap <leader>tc :TranClose<CR>

"Groovy
au FileType groovy call AddGroovyFuncList()
function! AddGroovyFuncList()
    execute("NeoCompleteLock")
    set  tags-=e:\programs\vim\groovy-tags, tags-=e:\programs\vim\groovy-api-tags, tags-=e:\programs\vim\jdk-tags
    set  tags+=e:\programs\vim\groovy-tags, tags+=e:\programs\vim\groovy-api-tags, tags+=e:\programs\vim\jdk-tags
endfunction

"Markdown
"au FileType markdown call MarkdownFile()
"function! MarkdownFile()
    "set  dictionary-=e:\programs\vim\engwords
    "set  dictionary+=e:\programs\vim\engwords
    "let g:SuperTabDefaultCompletionType = "<c-x><c-k>"
"endfunction

function! RunGroovy()
    " copy the current buffer file name in a variable
    let gfname=@%
    " open a new buffer in my window below
    botright new
    " define the buffer to be a mere scratch buffer not intended to be edited or saved
    setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
    setlocal filetype=groovy
    " create a temporaty file name to hold the output of the execution of my Groovy script
    let gtmpf = tempname()
    " define the command line to launch my Groovy script and retrieve its output in the temporary file
    let gcmd = ':!groovy ' . gfname . ' > ' . gtmpf
    echo gfname
    " execute the groovy command
    silent execute gcmd
    " insert the content of the output from the temporary file in my buffer
    silent execute '0r ' . gtmpf
endfunction
nnoremap qg :call RunGroovy()<cr>



"VimShell
nnoremap ,,v <Esc>:VimShellPop<cr>
autocmd FileType vimshell call VimInit()
function! VimInit()
    call vimshell#altercmd#define('l', 'll')
    call vimshell#altercmd#define('ll', 'ls -l')
    nnoremap <buffer> G <Esc>GA
endfunction




"JAVA
"au FileType java call AddJAVAFuncList()
"function! AddJAVAFuncList()
"let g:SuperTabDefaultCompletionType = "<c-x><c-]>"
"set  tags-=e:\programs\vim\jdk-tags
"set  tags+=e:\programs\vim\jdk-tags
"endfunction

"Mark
map <Leader>mm <Plug>MarkSet
map <Leader>mn <Plug>MarkClear
map <Leader>mr <Plug>MarkRegex

"PHP
au FileType php call PHPFuncList()
function! PHPFuncList()
    set  tags-=e:\programs\vim\php-tags, tags-=e:\programs\vim\php-vk-tags
    set  tags+=e:\programs\vim\php-tags, tags+=e:\programs\vim\php-vk-tags
endfunction

"Rooter 
let g:rooter_use_lcd = 1 " local buffer change 
let g:rooter_silent_chdir = 1 "quietly change dir
let g:rooter_manual_only = 0 "don't auto change to root directory
map <silent> <Leader>cd <Plug>RooterChangeToRootDirectory

"YankRing
map <Leader>p <Esc>:YRShow<cr>
let g:yankring_max_history = 100

"EasyMotion
let g:EasyMotion_leader_key = '<leader>'
let g:EasyMotion_mapping_j = '<leader>jl'
let g:EasyMotion_mapping_k = '<leader>kl'
"let g:EasyMotion_do_mapping = 0


"EasyAlign
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"DBPGPavim  for Xdebug 
""let g:dbgPavimKeyEval = '<F2>'
""let g:dbgPavimKeyPropertyGet = '<F3>'
""let g:dbgPavimKeyContextGet = '<F4>'
""let g:dbgPavimKeyStepOver = '<F6>'
""let g:dbgPavimKeyStepInto = '<F5>'
""let g:dbgPavimKeyStepOut = '<F7>'
""let g:dbgPavimKeyRun = '<F8>'
""let g:dbgPavimKeyRelayout = '<F9>'

"FuzzyFinder 
"map <Leader>fb <Esc>:FufBuffer<cr>
"map <Leader>ff <Esc>:FufFile<cr>
"map <Leader>fd <Esc>:FufDir<cr>
"map <Leader>ft <Esc>:FufTag<cr>
"map <Leader>fj <Esc>:FufJumpList<cr>

"phpfolding
let g:DisableAutoPHPFolding = 1
map <Leader>z <Esc>:EnablePHPFolds<Cr>
map <Leader>zd <Esc>:DisablePHPFolds<Cr>

"vimwiki
"nmap <silent><unique> <Leader>vw <Plug>VimwikiIndex
"nmap <silent><unique> <Leader>vt <Plug>VimwikiTabIndex
"nmap <silent><unique> <Leader>vs <Plug>VimwikiUISelect
"nmap <silent><unique> <Leader>vi <Plug>VimwikiDiaryIndex
"nmap <silent><unique> <Leader>v<Leader>i <Plug>VimwikiDiaryGenerateLinks
"nmap <silent><unique> <Leader>v<Leader>v <Plug>VimwikiMakeDiaryNote
"nmap <silent><unique> <Leader>v<Leader>t <Plug>VimwikiTabMakeDiaryNote
"let g:vimwiki_table_mappings=0


"CtrlP
noremap mm <Esc>:CtrlPMRU<cr>
noremap mf <Esc>:CtrlP<cr>
noremap mb <Esc>:CtrlPBuffer<cr>
nnoremap ;;r <Esc>:CtrlPClearCache<cr>
let g:ctrlp_clear_cache_on_exit=0
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g -Q ""'
"let g:ctrlp_use_caching = 0

"set wildignore=*.o,*.obj
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_regexp = 0
let g:ctrlp_mruf_max=1000
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](\.git|\.hg|\.svn|target)$',
            \ 'file': '\v\.(exe|so|dll|jpg|png|jpeg)$',
            \ }

"Maven setting
"autocmd BufNewFile,BufReadPost *.* call s:SetupMavenMap()
"function! <SID>SetupMavenMap()
    "doautocmd MavenAutoDetect BufNewFile,BufReadPost

    "if !maven#isBufferUnderMavenProject(bufnr("%"))
        "return
    "endif

    "" Execute testing
    "if !hasmapto("maven#run-unittest", "in")
        "imap <buffer> <silent> <F5> maven#run-unittest
        "nmap <buffer> <silent> <F5> maven#run-unittest
    "endif
    "" //~)

    "" Execute all of testing
    "if !hasmapto("maven#run-unittest-all", "in")
        "imap <buffer> <silent> <C-F5> maven#run-unittest-all
        "nmap <buffer> <silent> <C-F5> maven#run-unittest-all
    "endif
    "" //~)

    "" Switch of unit test
    "if !hasmapto("maven#switch-unittest-file", "in")
        "imap <buffer> <silent> <F6> maven#switch-unittest-file
        "nmap <buffer> <silent> <F6> maven#switch-unittest-file
    "endif
    "" //~)

    "" Open for testing result of testing
    "if !hasmapto("maven#open-test-result", "in")
        "imap <buffer> <silent> <C-F6> maven#open-test-result
        "nmap <buffer> <silent> <C-F6> maven#open-test-result
    "endif
    "" //~)
"endfunction  


"Unite
nmap <Leader>l  <esc>:Unite outline<cr><esc>:sleep 100 m<cr>i

"javacomplete2
"autocmd FileType java set omnifunc=javacomplete#Complete
"nmap <Leader>i <Plug>(JavaComplete-Imports-Add)
"imap <Leader>i <Plug>(JavaComplete-Imports-Add)

"Eclim
inoremap <m-/> <c-x><c-u>
cabbrev pcd ProjectCD

nnoremap <leader>jdp  <esc>:JavaDocPreview<cr>
nnoremap <leader>jcr  <esc>:JavaCorrect<cr>
nnoremap <leader>jrn  <esc>:JavaRename  
nnoremap <leader>jch  <esc>:JavaCallHierarchy<cr>

nnoremap <leader>im  <esc>:JavaImport<cr>
nnoremap <leader>jim  <esc>:JavaImport<cr>
nnoremap <leader>jio  <esc>:JavaImportOrganize<cr>
nnoremap <leader>jgs  <esc>:JavaGetSet<cr>
nnoremap <leader>jg  <esc>:JavaGet<cr>
nnoremap <leader>js  <esc>:JavaSet<cr>
nnoremap <leader>jfl  <esc>:LocateFile<cr>

nnoremap <leader>ju  <esc>:JUnit<cr>
nnoremap <leader>jff  <esc>:JavaFormat<cr>
nnoremap <leader>jsc  <esc>:JavaSearchContext<cr>
nnoremap <leader>jsh  <esc>:JavaSearch<cr>
"nnoremap <leader>jur  <esc>:JUnitResult<cr>
nnoremap <leader>jh  <esc>:JavaHierarchy<cr>


"""---------------------------------------------------------------------------------------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#auto_completion_start_length = 4
let g:neocomplete#sources#syntax#min_keyword_length = 4
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'php' : 'e:\programs\vim\php_funclist.txt',
            \ 'markdown' : $HOME.'/.vimconfig/engwords-long.txt',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '[a-zA-Z]*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplete#cancel_popup()

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.java = '\k\.\k*'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"""----------------------------------------------------------------------------------------
" file is large from 10mb
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile 
 autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function! LargeFile()
 " no syntax highlighting etc
 set eventignore+=FileType
 " save memory when other file is viewed
 setlocal bufhidden=unload
 " is read-only (write with :w new_filename)
 setlocal buftype=nowrite
 " no undo possible
 setlocal undolevels=-1
 " display message
 autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction
"""----------------------------------------------------------------------------------------

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

if &diff
    " diff mode
    set diffopt+=iwhite
endif
set diffexpr=MyDiff()
function! MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    if $VIMRUNTIME =~ ' '
        if &sh =~ '\<cmd'
            if empty(&shellxquote)
                let l:shxq_sav = ''
                set shellxquote&
            endif
            let cmd = '"' . $VIMRUNTIME . '\diff"'
        else
            let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
    else
        let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
    if exists('l:shxq_sav')
        let &shellxquote=l:shxq_sav
    endif
endfunction


