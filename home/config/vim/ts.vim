vim9script

var lspServers = [
    {
        name: 'tsserver',
        filetype: ['javascript', 'typescript'],
        path: 'typescript-language-server',
        args: ['--stdio']
    }
]
g:LspAddServer(lspServers)
