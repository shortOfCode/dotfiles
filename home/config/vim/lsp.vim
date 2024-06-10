vim9script

# -yegappan/lsp
# :h fold-commands for keybinding

g:LspAddServer([{name: 'rustanalyzer',
                  \   filetype: ['rust'],
                  \   path: $HOME .. '/.cargo/bin/rust-analyzer',
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
                 \   path: '/home/matthew/.local/bin/lua-language-server',
                 \   args: [],
                 \ }])
# g:LspAddServer([{name: 'awkls',
#                  \   filetype: 'awk',
#                  \   path: 'awk-language-server',
#                  \   args: []
#                  \ }])
g:LspAddServer([{name: 'bashls',
                 \   filetype: 'sh',
                 \   path: 'bash-language-server',
                 \   args: ['start']
                 \ }])
g:LspAddServer([{name: 'vscode-html-server',
                 \   filetype: 'html',
                 \   path: 'vscode-html-language-server',
                 \   args: ['--stdio'],
                 \ }])
g:LspAddServer([{name: 'vscode-css-server',
                 \   filetype: 'css',
                 \   path: 'vscode-css-language-server',
                 \   args: ['--stdio'],
                 \ }])
g:LspAddServer([{name: 'tsserver',
                 \   filetype: ['javascript', 'typescript'],
                 \   path: 'typescript-language-server',
                 \   args: ['--stdio']
                 \ }])
# g:LspAddServer([{name: 'pylsp',
#                  \   filetype: 'python',
#                  \   path: 'pylsp',
#                  \   args: []
#                  \ }])

# Tab through lsp suggestions
inoremap <expr> <tab> pumvisible() ? '<c-n>' : '<tab>'
inoremap <expr> <S-tab> pumvisible() ? '<c-p>' : '<S-tab>'

# nnoremap <leader>dn :LspDiag next<CR>
# nnoremap <leader>dN :LspDiag prev<CR>

# nnoremap gs <Nop>
# nnoremap go <Nop>
# nnoremap gb <Nop>
# nnoremap gl <Nop>
# nnoremap gx <Nop>
# nnoremap zq <Nop>

nnoremap <leader>ln :LspDiag nextWrap<CR>
nnoremap <leader>lp :LspDiag prevWrap<CR>
nnoremap <leader>lc :LspDiag current<CR>
nnoremap <leader>ll :LspHover<CR>
nnoremap <leader>lh :LspHightlight<CR>
# :LspHightlightClear

nnoremap <leader>le :LspCodeLens<CR>
nnoremap <leader>la :LspCodeAction<CR>

# :LspGotoDefinition
# :LspGotoDeclaration
# :LspGotoImpl
# :LspGotoTypeDef


