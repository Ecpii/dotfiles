" plug
call plug#begin(stdpath('data') . '/plugged')

" functional
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'psliwka/vim-smoothie'

" writing
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'junegunn/limelight.vim', { 'for': 'markdown' }

Plug 'lervag/vimtex', { 'for': 'tex' }
" Plug 'dhruvasagar/vim-table-mode'

" aesthetic
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/everforest', { 'for': 'tex' }
Plug 'xiyaowong/transparent.nvim'

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
let g:airline_theme = 'base16'
" let g:tokyonight_style = 'storm' " available: night, storm
colorscheme kanagawa
autocmd BufEnter,FileType tex call SetTexOptions()
autocmd BufEnter,FileType markdown call SetMarkdownOptions()

function SetTexOptions()
    let g:everforest_background = 'soft'
    let g:airline_theme='everforest'
    colorscheme everforest
endfunction

function SetMarkdownOptions()
    "let g:nord_italic = 1
    "colorscheme nord
    set spell
    set conceallevel=2

    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
endfunction

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

" vimtex
let g:tex_flavor='latex'
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

