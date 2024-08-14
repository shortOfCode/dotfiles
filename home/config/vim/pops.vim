vim9script

# This is a little diversion into popups.  I wanted
# a quick way to look at my own little cheat sheet
# while I attempt to be productive with vim.  I could
# have and eventually will learn to write a help file.
# But this seemed useful to know too.  FZF vim gave
# me the idea.  (more reason why I should just write
# my cheat sheet as a help file.)
#
# TODO: Make <ESC> close the popup
# TODO: Wrtie cheat sheet as a vim help file.

const motionCheats: string = $HOME .. "/.config/vim/motion.normal.cheat"
# const extraHelpCmd: list<string> = ["cat", motionCheats]
const treeCmd: list<string> = ["tree", "-I", "node_modules"]
var winid: number
var bufnr: number

var term_opts = {
    "hidden": 1,
    "term_kill": "term"
}


def PopThis(cmd: list<string>): number
    bufnr = term_start(cmd, term_opts)
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

def g:TogglePop(cmd: list<string>): number
    if winid == 0
        return PopThis(cmd)
    else
        return ClosePop()
    endif
enddef

command -nargs=0 PopMotion g:TogglePop(["cat", motionCheats])
command -nargs=0 PopTree g:TogglePop(treeCmd)

nnoremap <leader>cm :PopMotion<CR>
nnoremap <leader>e :PopTree<CR>
