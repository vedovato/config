set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'kien/ctrlp.vim'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'vim-airline/vim-airline'
	Plugin 'dracula/vim', { 'name': 'dracula' }
  " Plugin 'liuchengxu/space-vim-dark'
	" Plugin 'joshdick/onedark.vim'
  Plugin 'sheerun/vim-polyglot'
  Plugin 'lilydjwg/colorizer'
  Plugin 'mattn/emmet-vim'
	" Plugin 'mileszs/ack.vim'
  Plugin 'neoclide/coc.nvim', {'branch': 'release'}
call vundle#end()
filetype plugin indent on

let g:colorizer_nomap = 1

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.swo,node_modules,*.class,*.hg,*.DS_Store,*.min.*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.git " macosx/linux

syntax on
syntax enable
colorscheme dracula
" colorscheme space-vim-dark

let g:airline_theme='dracula'
" colorscheme onedark

let mapleader=" "
set mouse=a
set nowrap
set background=dark
" set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set relativenumber
set textwidth=0
set wrapmargin=0
set termguicolors

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

nmap ]] :w<CR>
imap [[ <Esc>

vmap <c-c> :w !pbcopy
nmap <c-v> :r !pbpaste

hi Type    gui=italic
hi Type    cterm=italic
hi htmlArg cterm=italic
hi htmlArg gui=italic
hi Comment cterm=italic
hi Comment gui=italic
hi Comment guifg=#5C6370 ctermfg=59
hi LineNr  ctermbg=NONE guibg=NONE

" CTRLP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|ds_store\|git'

" NERDTree settings
let g:jsx_ext_required = 0
let g:NERDTreeGitStatusWithFlags = 1
let NERDTreeRespectWildIgnore=1
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

nmap <silent> <C-n> :NERDTreeFind<CR>
autocmd FileType nerdtree setlocal relativenumber
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" COC settings
" let g:coc_global_extensions = ['coc-pairs', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-json' ]

" command! -nargs=0 Prettier :CocCommand prettier.formatFile " coc-prettier config
" set hidden " if hidden is not set, textedit might fail.
" set nobackup
" set nowritebackup " some servers have issues with backup files, see #649
" set cmdheight=1 " better display for messages
" set updatetime=300 " you will have bad experience for diagnostic messages when it's default 4000.
" set shortmess+=c " don't give |ins-completion-menu| messages.
" set signcolumn=yes " always show signcolumns

" use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" use tab for trigger completion with characters ahead and navigate.
" use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <tab>
      \ pumvisible() ? "\<c-n>" :
      \ <sid>check_back_space() ? "\<tab>" :
      \ coc#refresh()
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<c-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <silent> K :call CocAction('doHover')<CR>
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#util#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
