vim9script

# Deal with vertical separator
highlight VertSplit term=none cterm=none gui=none ctermbg=235 ctermfg=235
highlight link LspDiagInlineError Error
set fillchars=fold:-
set fillchars+=eob:\
set fillchars+=vert:.

# Pmenu colors
highlight Pmenu ctermfg=151 ctermbg=239
highlight PmenuSel ctermfg=151 ctermbg=237
highlight DiffDelete ctermfg=251

g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night',
      \ }
