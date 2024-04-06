vim9script

#packloadall

# I could put all my desired plugins in the `start` folder and run
# `packloadall` above, but I'd forget what I put in there.  This is
# especially an issue since I will use vim on more than 1 machine.
# Leaving my plugins on the `opt` folder and adding them manually
# as below means I can keep my config in a repo and see what I need
# plainly.  
#
# Why not use a plugin manager of some sort? I'll probably get there
# eventually.  I got this working.  It is stable.

# https://github.com/junegunn/fzf.git
packadd fzf

#  https://github.com/junegunn/fzf.vim.git
packadd fzf.vim

#  https://github.com/yegappan/lsp.git
packadd lsp

#  https://github.com/itchyny/lightline.vim.git
packadd lightline.vim

#  https://github.com/airblade/vim-accent.git
packadd vim-accent

#  https://tpope.io/vim/fugitive.git
packadd fugitive

#  https://github.com/airblade/vim-gitgutter.git
packadd vim-gitgutter
