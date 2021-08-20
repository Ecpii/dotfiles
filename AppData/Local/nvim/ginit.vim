" this file comes from the recommendation in https://github.com/equalsraf/neovim-qt readme
" Enable Mouse
set mouse=a

" Set Editor Font
"if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    "GuiFont {font_name}:h{size}
"endif

GuiFont! JetBrainsMono\ NF:h13

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Disable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 0
endif

" Right Click Context Menu (Copy-Cut-Paste)
" nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
" inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
" vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
