vim9script

# autocmd FileType htm,html inoremap <buffer> <C-j> <C-o>F<<CR><CR><Up><C-f>
# autocmd FileType htm,html inoremap <buffer> <C-i> <C-o>F<
# autocmd FileType htm,html imap <buffer> <C-x><C-o> ></
# autocmd CompleteDonePre call DoSomething()
# autocmd TextChangedP

g:user_emmet_install_global = 0
g:user_emmet_leader_key = ","
autocmd FileType html,css EmmetInstall


