" plug
call plug#begin(stdpath('data') . '/plugged')

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" functional
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'psliwka/vim-smoothie'
Plug 'andweeb/presence.nvim'

" writing
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'junegunn/limelight.vim', { 'for': 'markdown' }

" aesthetic
Plug 'vim-airline/vim-airline'
Plug 'ghifarit53/tokyonight-vim'
Plug 'arcticicestudio/nord-vim', { 'for': 'markdown' }
Plug 'junegunn/seoul256.vim', { 'for': 'tex' }

call plug#end()

" basics
set nu! rnu!
set spelllang=en
set nospell
set backspace=indent,eol,start
set ignorecase
set smartcase
set list lcs=tab:\|\ ,trail:•
set title

" gui stuff
set termguicolors
let g:airline_powerline_fonts = 1
let g:tokyonight_style = 'storm' " available: night, storm
colorscheme tokyonight
autocmd BufEnter,FileType tex colorscheme seoul256
autocmd BufEnter,FileType markdown colorscheme nord

" keymappings

" normal editing shortcuts
inoremap <C-v> <C-r>+
nnoremap <C-v> "+p
vnoremap <C-c> "+y
inoremap <C-a> <Esc>ggVG

" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv

" movement keys go on line wraps
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> 0 g0
nnoremap <silent> $ g$

" firenvim
let g:firenvim_config = {
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'takeover': 'never',
        \ },
    \ }
\ }

if exists('g:started_by_firenvim')
    set guifont=JetBrains\ Mono:h10
else
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    set guifont=JetBrains\ Mono:h13
endif

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_manual = 1
set fillchars=fold:\ 

let g:vimtex_compiler_latexmk = {
      \ 'build_dir': 'C:\temp'
      \}

" vim airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.colnr = ':'

" Goyo and Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Format JSON data
" map <C-F6> :%!python -m json.tool<CR>

