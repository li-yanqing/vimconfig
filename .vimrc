set nocompatible              " be iMproved, required
filetype off                  " required

"install Vundle like this:
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
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
Plugin 'quickrun.vim'


Plugin 'vim-airline'

Plugin 'matchit.zip'
Plugin 'EasyMotion'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'rking/ag.vim'

"Plugin 'AutoClose'
Plugin 'vim-easy-align'
Plugin 'HTML-AutoCloseTag'
Plugin 'L9'
Plugin 'VOoM'
Plugin 'jsbeautify'
Plugin 'surround.vim'
Plugin 'Shougo/unite.vim'
Plugin 'aquach/vim-http-client'
Plugin 'kien/ctrlp.vim'

Plugin 'VisIncr'
Plugin 'auto_mkdir'

Plugin 'Markdown-syntax'
Plugin 'xml.vim'

Plugin 'The-NERD-Commenter'
Plugin 'luochen1990/rainbow'


Plugin 'mikelue/vim-maven-plugin'

Plugin 'JavaDecompiler.vim'

Plugin 'airblade/vim-rooter'

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
set sm "match the { or ( or [
set ai "auto align
set sw=4 "tab length
syntax on 
set textwidth=0 "maxlength of line
set autoread "auto load file change

set nobackup "don't backup file

set tabstop=4 "tab to space
set expandtab
set linespace=1
set ve=all
set autochdir  "auto change to current folder
set guifont=YaHei\ Consolas\ Hybrid:h11
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




"color scheme
"colorscheme desert
"colorscheme desertEx
colorscheme desert256 

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
" highlight current line
"set cursorline
"set cursorcolumn
" highlight search result
set hlsearch




"Ag
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
"configure ag.vim to always start searching from your project root instead of the cwd
let g:ag_prg="ag --vimgrep --smart-case"
let g:ag_working_path_mode="r"
nnoremap <Leader>vv  <Esc>:Ag <cword><cr>






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
"map <Leader>p <Esc>:YRShow<cr>
"let g:yankring_max_history = 100

"EasyMotion
let g:EasyMotion_leader_key = ','

"EasyAlign
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)






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

