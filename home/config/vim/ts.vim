vim9script

# would be good to detect a deno project and only then use the deno lsp
augroup web
    if !exists("autots")
        var autots = 1
        var lspServers = [
            {
                name: 'tsserver',
                filetype: ['javascript', 'typescript'],
                path: 'deno',
                args: ['lsp'],
                debug: true,
                initializationOptions: {
                    enable: true,
                    lint: true
                }
            }
        ]
        g:LspAddServer(lspServers)
    endif
augroup END

#var lspServers = [
#    {
#        name: 'tsserver',
#        filetype: ['javascript', 'typescript'],
#        path: 'typescript-language-server',
#        args: ['--stdio']
#    }
#]
#g:LspAddServer(lspServers)
