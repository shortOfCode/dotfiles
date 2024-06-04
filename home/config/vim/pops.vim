# This is a little diversion into popups.  I wanted
# a quick way to look at my own little cheat sheet
# while I attempt to be productive with vim.  I could
# have and eventually will learn to write a help file.
# But this seemed useful to know too.  FZF vim gave
# me the idea.  (more reason why I should just write
# my cheat sheet as a help file.)
#
# TODO: Make <ESC> close the popup
# TODO: `tree` output in a popup?
# TODO: Wrtie cheat sheet as a vim help file.

vim9script

const extraHelpTxt: string = $HOME .. "/workspace/dotfiles/home/config/vim/extra-help.txt"
var winid: number

var term_opts = {
    "hidden": 1,
    "term_kill": "term"
}


def PopThis(): number
    var bufnr = term_start(["cat", extraHelpTxt], term_opts)
    var width = float2nr(&columns * 0.8)
    var height = float2nr(&lines * 0.8)
    var popOpts = {
        "title": "Extra Help",
        "padding": [2, 2, 2, 2],
        "border": [],
        "minwidth": width,
        "maxwidth": width,
        "minheight": height,
        "maxheight": height,
        "line": float2nr(&lines * 0.2 / 2),
        "column": float2nr(&columns * 0.2 / 2)
    }
    
    winid = popup_create(bufnr, popOpts)

    return 1
enddef

def ClosePop(): number
    popup_close(winid)
    winid = 0
    execute 'bd!' bufnr('$')
    return 1
enddef

def g:TogglePop(): number
    if winid == 0
        return PopThis()
    else
        return ClosePop()
    endif
enddef

command -nargs=0 PopExtraHelp g:TogglePop()

nnoremap <leader>c :PopExtraHelp<CR>
