set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"""----------------------------------------------------------------------------------------
Plugin 'SuperTab'
"Plugin 'EasyGrep'
Plugin 'VimExplorer'
Plugin 'mru.vim'
Plugin 'quickrun.vim'
Plugin 'taglist.vim'
Plugin 'vim-misc'
Plugin 'phpcomplete.vim'


Plugin 'vim-airline'
"Plugin 'Lokaltog/vim-powerline' 
"Plugin 'powerline/powerline'

Plugin 'matchit.zip'
"Plugin 'YankRing.vim'
Plugin 'EasyMotion'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'rking/ag.vim'

"Plugin 'AutoClose'
Plugin 'vim-easy-align'
Plugin 'HTML-AutoCloseTag'
Plugin 'DBGPavim'
Plugin 'L9'
Plugin 'phpfolding.vim'
Plugin 'FuzzyFinder'
"Plugin 'ShowMarks'
Plugin 'VOoM'
"Plugin 'SearchComplete'
"Plugin 'vimwiki'
"Plugin 'tpope/vim-repeat'
Plugin 'jsbeautify'
Plugin 'surround.vim'
"Plugin 'Quramy/vison'
Plugin 'Shougo/unite.vim'
Plugin 'aquach/vim-http-client'
Plugin 'kien/ctrlp.vim'
"Plugin 'Decho'
"Plugin 'vimshell-ssh'    
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'

Plugin 'VisIncr'
Plugin 'auto_mkdir'

"Plugin 'UltiSnips'
"Plugin 'Markdown'
Plugin 'Markdown-syntax'
Plugin 'xml.vim'

Plugin 'The-NERD-Commenter'
Plugin 'luochen1990/rainbow'

Plugin 'Gundo'

Plugin 'mikelue/vim-maven-plugin'

Plugin 'JavaDecompiler.vim'

Plugin 'airblade/vim-rooter'

Plugin 'artur-shaik/vim-javacomplete2'
"Plugin 'msanders/snipmate.vim'
Plugin 'Java-Syntax-and-Folding'

Plugin 'luochen1990/select-and-search'

Plugin 'Mark'




"color
Plugin 'dw_colors'
Plugin 'Color-Sampler-Pack'
Plugin 'ScrollColors'
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
set nu
set fileencodings=utf-8,gbk
set nowrap
set sm "sm会在你敲},]或)显示出对应匹配的{,[或(来
set ai "自动对齐
set sw=4 "设置Tab宽度
syntax on "语法加亮
set textwidth=0 "设置每行最大宽度
set conceallevel=2 "设置JSON的优化显示方式
set autoread "设置自动加载文件变更

set nobackup "不备份
set undofile  "Open Persistent Undo
set undodir=$HOME/\_undodir
set undolevels=1000  "how many operation could be undone

set tabstop=4 "tab->空格
set expandtab
set linespace=1
set ve=all
"set autochdir  "自动切换到当前Buf目录下
set guifont=YaHei\ Consolas\ Hybrid:h11
"真的很smart, 搜索时全小写相当于不区分大小写，只要有一个大写字母出现，则区分大小写
set ignorecase smartcase

"auto change dir to current dir
au BufRead,BufNewFile * cd %:p:h


""map <F5> <Esc>:tabnew<cr>
""map <F4> <Esc>:tabclose<cr>
""map <F2> <Esc>:tabprevious<cr>
""map <F3> <Esc>:tabnext<cr>

"custome operation{{{

"Disable q:
map q: <Nop>


nnoremap mx <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
noremap <Leader>q <Esc>:q<cr>
noremap <Leader>Q <Esc>:q!<cr>
map <C-t> <Esc>:tabnew<cr>
map <C-u> <Esc>:tabnext<cr>
map <C-y> <Esc>:tabprevious<cr>
map <Leader><Leader>fj  !python -m json.tool<CR> 
map <Leader><Leader>fx  !xmllint --format --recover - 2>/dev/null <CR> 


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
nnoremap ;w <Esc>:set wrap<cr>
nnoremap ;;w <Esc>:set nowrap<cr>

"menu
nnoremap ;m <Esc>:set guioptions+=m<cr>
nnoremap ;;m <Esc>:set guioptions-=m<cr>

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
nmap <c-left> <c-w><
nmap <c-right> <c-w>>
nmap <c-up> <c-w>+
nmap <c-down> <c-w>-


"}}}custome operation




"颜色主题
"colorscheme desert
"colorscheme desertEx
colorscheme desert256 

"界面
"set guioptions-=T "工具条
"set guioptions+=m "菜单
"set guioptions+=e "Tab line
set guioptions-=e "Tab line
"set guioptions+=b "底部滚动条
" 禁止光标闪烁
"set gcr=a:block-blinkon0


" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
"set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch

"Gundo
" 开启保存 undo 历史功能
set undofile
" undo 历史保存路径
set undodir=$HOME/\_undo_history/



"Ag
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
"configure ag.vim to always start searching from your project root instead of the cwd
let g:ag_prg="ag --vimgrep --smart-case"
let g:ag_working_path_mode="r"
nnoremap <Leader>vv  <Esc>:Ag <cword><cr>





"EasyGrep
"let g:EasyGrepRecursive = 1
"let g:EasyGrepOpenWindowOnMatch=0
"let g:EasyGrepFilesToExclude = "*.class, *.jar, *.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"
"let g:EasyGrepCommand=1



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




"MRU
let MRU_Max_Entries = 1000
let MRU_File = 'E:\programs\vim\_vim_mru_files'

"QuickRun
nmap <Leader>r <Esc>:QuickRun<cr>
vmap <Leader>r :QuickRun bash<cr>
let g:quickrun_config = {}
let g:quickrun_config.markdown = {
            \ 'type': 'markdown/pandoc',
            \ 'command' : 'E:/programs/Markdown/MarkdownEditor.exe',
            \ 'exec' : '%c %s',
            \ 'outputter':'null'
            \ }  

"select & search
let g:select_and_search_active = 3

"rainbow
let g:rainbow_active=1

"SuperTab
let g:SuperTabRetainCompletionType = 0 
""let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

"Groovy
au FileType groovy call AddGroovyFuncList()
function! AddGroovyFuncList()
    execute("NeoCompleteLock")
	set  tags-=e:\programs\vim\groovy-tags, tags-=e:\programs\vim\groovy-api-tags, tags-=e:\programs\vim\jdk-tags
    set  tags+=e:\programs\vim\groovy-tags, tags+=e:\programs\vim\groovy-api-tags, tags+=e:\programs\vim\jdk-tags
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
let g:rooter_silent_chdir = 1 "切换后不提示
let g:rooter_manual_only = 0 "是否自动切换到根目录下
map <silent> <Leader>cd <Plug>RooterChangeToRootDirectory

"YankRing
"map <Leader>p <Esc>:YRShow<cr>
"let g:yankring_max_history = 100

"EasyMotion
let g:EasyMotion_leader_key = ','

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
autocmd BufNewFile,BufReadPost *.* call s:SetupMavenMap()
function! <SID>SetupMavenMap()
    doautocmd MavenAutoDetect BufNewFile,BufReadPost

    if !maven#isBufferUnderMavenProject(bufnr("%"))
        return
    endif

    " Execute testing
    if !hasmapto("maven#run-unittest", "in")
        imap <buffer> <silent> <F5> maven#run-unittest
        nmap <buffer> <silent> <F5> maven#run-unittest
    endif
    " //~)

    " Execute all of testing
    if !hasmapto("maven#run-unittest-all", "in")
        imap <buffer> <silent> <C-F5> maven#run-unittest-all
        nmap <buffer> <silent> <C-F5> maven#run-unittest-all
    endif
    " //~)

    " Switch of unit test
    if !hasmapto("maven#switch-unittest-file", "in")
        imap <buffer> <silent> <F6> maven#switch-unittest-file
        nmap <buffer> <silent> <F6> maven#switch-unittest-file
    endif
    " //~)

    " Open for testing result of testing
    if !hasmapto("maven#open-test-result", "in")
        imap <buffer> <silent> <C-F6> maven#open-test-result
        nmap <buffer> <silent> <C-F6> maven#open-test-result
    endif
    " //~)
endfunction  



"javacomplete2
autocmd FileType java set omnifunc=javacomplete#Complete
nmap <Leader>i <Plug>(JavaComplete-Imports-Add)
imap <Leader>i <Plug>(JavaComplete-Imports-Add)




"""---------------------------------------------------------------------------------------------------
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
    \ 'php' : 'e:\programs\vim\php_funclist.txt',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

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
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

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
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"""----------------------------------------------------------------------------------------


source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

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


