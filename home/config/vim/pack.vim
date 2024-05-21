vim9script

var plugDir = $HOME .. '/.vim/pack/plugins/start/'

var plugs = {
    'fzf': 'https://github.com/junegunn/fzf.git',
    'fzf.vim': 'https://github.com/junegunn/fzf.vim.git',
    'lsp': 'https://github.com/yegappan/lsp.git',
    'lightline.vim': 'https://github.com/itchyny/lightline.vim.git',
    'vim-accent': 'https://github.com/airblade/vim-accent.git',
    'fugitive': 'https://tpope.io/vim/fugitive.git',
    'vim-gitgutter': 'https://github.com/airblade/vim-gitgutter.git',
    'commentary': 'https://tpope.io/vim/commentary.git',
    'emmet-vim': 'https://github.com/mattn/emmet-vim.git'
}

def ClonePlug(plug: string): number
    echo  'Cloning ' .. plugs[plug]
    system('git clone ' .. plugs[plug] .. ' ' .. $HOME .. '/.vim/pack/plugins/start/' .. plug)
    return 1
enddef

def CheckPlug(plug: string): number
    if isdirectory($HOME .. '/.vim/pack/plugins/start/' .. plug)
	return 1
    else
        return ClonePlug(plug)
    endif
enddef

for plug in keys(plugs)
    #echo plug .. ': ' .. plugs[plug]
    CheckPlug(plug)
endfor

packloadall

