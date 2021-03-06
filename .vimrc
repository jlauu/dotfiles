set nocompatible              " be iMproved, required filetype off                  " required

" debug ycm
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-rooter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dag/vim2hs'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'hecal3/vim-leader-guide'
Plugin 'jremmen/vim-ripgrep'
Plugin 'jreybert/vimagit'
Plugin 'junegunn/gv.vim'
Plugin 'mhinz/vim-startify'
Plugin 'osyo-manga/vim-over'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete-file.vim'
Plugin 'prabirshrestha/asyncomplete-flow.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'rainbow_parentheses.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sheerun/vim-polyglot'
Plugin 'surround.vim'
Plugin 'tpope/tpope-vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'rakr/vim-one'
Plugin 'Galooshi/vim-import-js'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set relativenumber      " show relative line numbers
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

set noswapfile
set autoindent
set smartindent
set cindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set tw=80
set expandtab
set shiftround
set preserveindent
set incsearch
set ignorecase
set fenc=utf-8
set ff=unix
nmap <F1> 1gt
nmap <F2> 2gt
nmap <F3> 3gt
nmap <F4> 4gt
nmap <F5> 5gt
nmap <F6> 6gt
nmap <F7> 7gt
nmap <F8> 8gt
nmap <F9> 9gt

set nobackup
set nowritebackup
inoremap jj <Esc>

" Nerditya Settings

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Relative numbering
function! NumberToggle()
if(&relativenumber == 1)
  set nornu
  set number
else
  set rnu
endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <Leader>r :call NumberToggle()<cr>

" Reduce keystrokes
nnoremap ; :
nnoremap Q @q
" End Nerditya

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

let mapleader = " "
let g:mapleader = " "

" Yank to clipboard
vnoremap <Leader>y  "+y
nnoremap <Leader>Y  "+yg_
nnoremap <Leader>y  "+y
nnoremap <Leader>yy  "+yy

" Paste from clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

"autocmd FileType javascript setlocal equalprg=js-beautify\ -s\ 2\ --stdin
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:jsx_ext_required = 0 " Allow JSX in js files
" let g:CommandTAcceptSelectionMap = '<C-t>'
" let g:CommandTAcceptSelectionTabMap = '<CR>'
" let g:syntastic_python_checkers = ['pylint']
set number
syntax on
set termguicolors

""" palenight
set background=dark
colorscheme palenight
let g:palenight_terminal_italics=1

""" ayu
"colorscheme ayu
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"let ayucolor="light"  " for light version of theme

""" vim-one
"colorscheme one
"set background=dark " for the dark version
 ""set background=light " for the light version
"let g:airline_theme='one'
"let g:one_allow_italics = 1 " I love italic for comments

" ctrlp
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

set wildignore+=*/.git*,*/node_modules/*,*/tmp/*,*.swp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll)$',
\ }
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_user_command = 'git grep %s'
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }

function! BrightHighlightOn()
  hi cursorline cterm=none ctermbg=darkred ctermfg=white guibg=darkred guifg=white
endfunction

function! BrightHighlightOff()
  set nocursorline
endfunction

" split macros
map <leader> <A-h> <C-w><
map <leader> <A-j> <C-W>-
map <leader> <A-k> <C-W>+
map <leader> <A-l> <C-w>>

" Rainbow Parentheses
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
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Reload vimrc
augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

"" Airline
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme='understated'

"" directory
map <Leader><Leader>. :vs %:h<CR>
map <Leader><Leader>> :sp %:h<CR>

"" ale
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace']
\}
nmap <leader> <C-k> <Plug>(ale_previous_wrap)
nmap <leader> <C-j> <Plug>(ale_next_wrap)

"" ripgrep
let g:rg_root_types = ['.git']
let g:rg_derive_root = 1
nmap <silent> <Space>* :Rg<Enter>
nmap <silent> <Space><Space>* % !pyp "p\|p.split('\|')[0]"<bar>%sort u<Enter>

"" lsp
let g:asyncomplete_smart_completion = 1
let g:asyncomplete_auto_popup = 1
if executable('pyls')
  " pip install python-language-server
  au User lsp_setup call lsp#register_server({
      \ 'name': 'pyls',
      \ 'cmd': {server_info->['pyls']},
      \ 'whitelist': ['python'],
      \ })
endif
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#flow#get_source_options({
  \ 'name': 'flow',
  \ 'whitelist': ['javascript'],
  \ 'completor': function('asyncomplete#sources#flow#completor'),
  \ }))
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
  \ 'name': 'file',
  \ 'whitelist': ['*'],
  \ 'priority': 10,
  \ 'completor': function('asyncomplete#sources#file#completor')
  \ }))

"" leadermap
" Define prefix dictionary
let g:lmap =  {}

" Create new menus not based on existing mappings:
let g:lmap.g = {
      \'name' : 'Git Menu',
      \'s' : ['Gstatus', 'Git Status'],
              \'p' : ['Gpull',   'Git Pull'],
              \'u' : ['Gpush',   'Git Push'],
              \'c' : ['Gcommit', 'Git Commit'],
              \'w' : ['Gwrite',  'Git Write'],
              \}

" If you use NERDCommenter:
let g:lmap.c = { 'name' : 'Comments' }
" Define some descriptions
let g:lmap.c.c = ['call feedkeys("\<Plug>NERDCommenterComment")','Comment']
let g:lmap.c[' '] = ['call feedkeys("\<Plug>NERDCommenterToggle")','Toggle']
" The Descriptions for other mappings defined by NerdCommenter, will default
" to their respective commands.
"

"" over and incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"" swoop
nmap --- :set nocul<CR>

"" rooter
let g:rooter_patters = ['.git/']

"" deoplete
let g:deoplete#enable_at_startup = 1
