vim9script

var packDir = $HOME .. '/.vim/pack/plugins/start/'

var packs = {
    'fzf': 'https://github.com/junegunn/fzf.git',
    'fzf.vim': 'https://github.com/junegunn/fzf.vim.git',
    'lightline.vim': 'https://github.com/itchyny/lightline.vim.git',
    'vim-accent': 'https://github.com/airblade/vim-accent.git',
    'lsp': 'https://github.com/yegappan/lsp',
    'fugitive': 'https://tpope.io/vim/fugitive.git',
    'vim-gitgutter': 'https://github.com/airblade/vim-gitgutter.git',
    'commentary': 'https://tpope.io/vim/commentary.git',
    'emmet-vim': 'https://github.com/mattn/emmet-vim.git',
    'vim-blade': 'https://github.com/jwalton512/vim-blade.git'
}

def ClonePack(pack: string): number
    echo  'Cloning ' .. packs[pack]
    system('git clone ' .. packs[pack] .. ' ' .. $HOME .. '/.vim/pack/plugins/start/' .. pack)
    return 1
enddef

def CheckPack(pack: string): number
    if isdirectory($HOME .. '/.vim/pack/plugins/start/' .. pack)
	    return 1
    else
        return ClonePack(pack)
    endif
enddef

for pack in keys(packs)
    CheckPack(pack)
endfor

packloadall

