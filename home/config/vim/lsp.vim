vim9script

# -yegappan/lsp
# :h fold-commands for keybinding
set keywordprg=:LspHover
var lspServers = [
    {
        name: 'rustanalyzer',
        filetype: ['rust'],
        path: 'rust-analyzer',
        args: [],
        syncInit: v:true,
        initializationOptions: {
            inlayHints: {
                typeHints: {
                    enable: v:true
                },
                parameterHints: {
                    enable: v:true
                }
            }
        }
    },
    {
        name: 'luals',
        filetype: 'lua',
        path: 'lua-language-server',
        args: []
    },
    {
        name: 'bashls',
        filetype: 'sh',
        path: 'bash-language-server',
        args: ['start']
    },
    {
        name: 'pylsp',
        filetype: 'python',
        path: 'pyls',
        args: []
    }
]
g:LspAddServer(lspServers)
g:LspOptionsSet({
    "snippetSupport": v:true,
    "showDiagWithVirtualText": v:true,
    "diagVirtualTextAlign": "after",
    "useQuickfixForLocations": v:true
})

# autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

# Tab through lsp suggestions
# inoremap <expr> <tab> pumvisible() ? '<c-n>' : '<tab>'
# inoremap <expr> <S-tab> pumvisible() ? '<c-p>' : '<S-tab>'

# :LspCodeLens<CR>                  # applies
# :LspCodeAction<CR>
# :LspDiag current<CR>              # current line / optionally popup, auto
# :LspDiag! current<CR>             # ditto
# :LspDiag here<CR>                 # jump
# :LspDaig first<CR>                # jump
# :LspDiag next<CR>                 # jump
# :LspDiag nextWrap<CR>             # jump
# :LspDiag prev<CR>                 # jump
# :LspDiag prevWrap<CR>             # jump
# :LspDiag last<CR>                 # jump
# :LspDiag highlight enable<CR>     # default
# :LspDiag highlight disable<CR>
# :LspDiag show<CR>

# :LspDocumentSymbol<CR>            # popup
# :LspHover<CR>                     # K
# :LspInlayHints enable<CR>
# :LspInlayHints disable<CR>
# :LspOutline<CR>
# :LspShowReferences<CR>

# :LspGotoDeclaration<CR>
# :LspGotoDefinition:<CR>           # gd suggested
# :LspGotoImpl<CR>                  # gi suggested
# :LspGotoTypeDef<CR>               # gt suggested
# :LspPeekDeclaration<CR>
# :LspPeekDefinition<CR>
# :LspPeekImpl<CR>
# :LspPeekReferences<CR>
# :LspPeekTypeDef<CR>
# :LspSymbolSearch<CR>

# :LspHightlight<CR>
# :LspHighlightClear<CR>

# :LspSelectionExpand<CR>
# :LspSelectionShrink<CR>

# :LspCallHierarchyRefresh<CR>
# :LspCallHierarchyIncoming<CR>
# :LspCallHierarchyOutgoing<CR>
# :LspSubTypeHierarchy<CR>
# :LspSuperTypeHierarchy<CR>

# :LspFold
# :LspFormat
# :LspRename

# :LspServer restart
# :LspShowAllServers
