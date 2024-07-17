vim9script

# Nops
nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>

# Available
nnoremap gb <Nop>
nnoremap ge <Nop>
nnoremap gl <Nop>
nnoremap go <Nop>
nnoremap gs <Nop>
nnoremap gx <Nop>
nnoremap zq <Nop>
inoremap <C-J> <Nop>
inoremap <C-I> <Nop>

# Available because of redundancy
nnoremap + <Nop>
nnoremap - <Nop>
nnoremap <C-h> <Nop> # remapped for windows
nnoremap <C-j> <Nop> # remapped for windows
nnoremap <C-m> <Nop> 
nnoremap <C-n> <Nop>
nnoremap <C-p> <Nop>
nnoremap <BS> <Nop>
nnoremap <Space> <Nop>

# nnoremap <leader>gD :LspGotoDefinition<CR>
# nnoremap <leader>gd :LspPeekDefinition<CR>
# nnoremap <leader>gJ :LspGotoDeclaration<CR>
# nnoremap <leader>gj :LspPeekDeclaration<CR>
# nnoremap <leader>gT :LspGotoTypeDef<CR>
# nnoremap <leader>gt :LspPeekTypeDef<CR>
# nnoremap <leader>gI :LspGotoImpl<CR>
# nnoremap <leader>gi :LspPeekImpl<CR>

# nnoremap <leader>gn :LspDiag nextWrap<CR>
# nnoremap <leader>gp :LspDiag prevWrap<CR>
# nnoremap <leader>gc :LspDiag current<CR>
# nnoremap <leader>gA :LspDiag show<CR>
# nnoremap <leader>gl :LspHover<CR>
# nnoremap <leader>gh :LspHighlight<CR>
# nnoremap <leader>g<Space> :LspHighlightClear<CR>
# nnoremap <leader>ge :LspCodeLens<CR>
# nnoremap <leader>gS :LspDocumentSymbol<CR>
# nnoremap <leader>go :LspOutline<CR>
# nnoremap <leader>gR :LspShowReferences<CR>
# nnoremap <leader>gb :LspIncomingCalls<CR>
# nnoremap <leader>gB :LspOutgoingCalls<CR>
# nnoremap <leader>gw :LspSubTypeHierarchy<CR>
# nnoremap <leader>gW :LspSuperTypeHierarchy<CR>
# nnoremap <F2> :LspRename<CR>
# nnoremap <leader>ga :LspCodeAction<CR>

# # Up/Down/Left/Right
# nnoremap <C-Right> <C-w>L
# nnoremap <C-Left> <C-w>H
# nnoremap <C-Down> <C-w>J
# nnoremap <C-Up> <C-w>K
# nnoremap <S-Left> <C-w><
# nnoremap <S-Right> <C-w>>
# nnoremap <S-Up> <C-w>+
# nnoremap <S-Down> <C-w>-
# # HJKL
# nnoremap K {
# nnoremap J }
# nnoremap H ^
# nnoremap L $
# nnoremap <C-h> <C-w><Left>
# nnoremap <C-j> <C-w><Down>
# nnoremap <C-k> <C-w><Up>
# nnoremap <C-l> <C-w><Right>
# inoremap <C-h> <Left>
# inoremap <C-j> <Down>
# inoremap <C-k> <Up>
# inoremap <C-l> <Right>
# tnoremap <C-h> <C-w><Left>
# tnoremap <C-j> <C-w><Down>
# tnoremap <C-k> <C-w><Up>
# tnoremap <C-l> <C-w><Right>

# ## Close then type
# inoremap <> <><Left> # while tinkering with html
# inoremap () ()<Left>
# inoremap {} {}<Left>
# inoremap [] []<Left>
# inoremap "" ""<Left>
# inoremap '' ''<Left>
# inoremap `` ``<Left>

# ## Make space in between surrounding things
# inoremap <leader>{ {<CR>}<Esc>ko<C-f>
# inoremap <leader>[ [<CR>]<Esc>ko<C-f>
# inoremap <leader><CR> <CR><Esc>ko<C-f>

# ## Switching buffers
# nnoremap <Tab> :bnext<CR>
# nnoremap <S-Tab> :bprev<CR>
# nnoremap <leader>bd :b#<bar>:bd#<CR>
# nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
# nnoremap <leader>/ <C-w>s
# nnoremap <leader>\ <C-w>v
# nnoremap <leader>- :res<CR>
# nnoremap <leader>= <C-w>=
# nnoremap <leader><space> :noh<CR>
# nmap <leader>h :Help<CR>
# nmap <leader>f :Files<CR>
# nmap <leader>r :Rg<CR>
# nmap <leader>m :GFiles -m<CR>
# nmap <leader>p :GFiles -u<CR>
# nmap <leader>b :Buffers<CR>
# nmap <leader>l :Lines<CR> # Using this key for LSP
# nmap <leader>M :Marks<CR>
# nmap <leader>H :History<CR>
# nmap <leader>t :Color<CR>
# nnoremap <leader>c :PopExtraHelp<CR>
# nnoremap <leader>e :PopTree<CR>

# # call setbufvar(bufnr, 'buflisted', 0)  # Allows tab through?


# nnoremap <F8> :source %<CR>
# inoremap <expr> <tab> pumvisible() ? '<c-n>' : '<tab>'
# inoremap <expr> <S-tab> pumvisible() ? '<c-p>' : '<S-tab>'






