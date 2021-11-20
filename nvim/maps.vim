let mapleader = " "
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
" do not undo all text.
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
nnoremap <C-j> :GFiles<CR>
nnoremap <C-k> :GFiles?<CR>
nnoremap <leader>m :MaximizerToggle<CR>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
" Disable arrow keys.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>


" Rebind copilot to End and Right arrow key.
imap <silent><script><expr> <End> copilot#Accept("\<CR>")
imap <silent><script><expr> <Right> copilot#Accept("\<CR>")

" Fast pane resizing (C-w +/-/>/< and keep tapping/holding to resize)
nmap          <C-W>+     <C-W>+<SID>ws
nmap          <C-W>-     <C-W>-<SID>ws
nn <script>   <SID>ws+   <C-W>+<SID>ws
nn <script>   <SID>ws-   <C-W>-<SID>ws
nmap          <C-W>>     <C-W>><SID>ws
nmap          <C-W><     <C-W><<SID>ws
nn <script>   <SID>ws>   <C-W>><SID>ws
nn <script>   <SID>ws<   <C-W><<SID>ws
nmap          <SID>ws    <Nop>
