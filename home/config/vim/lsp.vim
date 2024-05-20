vim9script

# -yegappan/lsp
# :h fold-commands for keybinding

g:LspAddServer([{name: 'rustanalyzer',
                 \   filetype: ['rust'],
                 \   path: '/home/matthew/.cargo/bin/rust-analyzer',
                 \   args: [],
                 \   syncInit: v:true,
                 \   initializationOptions: {
                      \    inlayHints: {
                      \      typeHints: {
                      \        enable: v:true
                      \      },
                      \      parameterHints: {
                      \        enable: v:true
                      \      }
                      \    },
                      \  }
                 \ }])
g:LspAddServer([{name: 'luals',
                 \   filetype: 'lua',
                 \   path: '/home/matthew/.local/luals/bin/lua-language-server',
                 \   args: [],
                 \ }])
g:LspAddServer([{name: 'awkls',
                 \   filetype: 'awk',
                 \   path: 'awk-language-server',
                 \   args: []
                 \ }])
g:LspAddServer([{name: 'bashls',
                 \   filetype: 'sh',
                 \   path: 'bash-language-server',
                 \   args: ['start']
                 \ }])
# g:LspAddServer([{name: 'emmet',
#                  \   filetype: 'html',
#                  \   path: 'emmet-language-server',
#                  \   args: ['--stdio'],
#                  \ }])
g:LspAddServer([{name: 'tsserver',
                 \   filetype: ['javascript', 'typescript'],
                 \   path: 'typescript-language-server',
                 \   args: ['--stdio']
                 \ }])
g:LspAddServer([{name: 'pylsp',
                 \   filetype: 'python',
                 \   path: 'pylsp',
                 \   args: []
                 \ }])

# Tab through lsp suggestions
inoremap <expr> <tab> pumvisible() ? '<c-n>' : '<tab>'
inoremap <expr> <S-tab> pumvisible() ? '<c-p>' : '<S-tab>'

nnoremap <leader>d :LspDiag next<CR>
nnoremap <leader>D :LspDiag prev<CR>

