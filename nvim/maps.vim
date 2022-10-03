let mapleader = " "
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
" do not undo all text.
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
nnoremap <C-j> :FzfLua files<CR>
nnoremap <C-k> :FzfLua git_files<CR>
nnoremap <leader>m :MaximizerToggle<CR>

" Move between windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Move windows using shift.
nnoremap <leader>H :wincmd H<CR>
nnoremap <leader>J :wincmd J<CR>
nnoremap <leader>K :wincmd K<CR>
nnoremap <leader>L :wincmd L<CR>

" Disable arrow keys.
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>

" Rebind copilot to End and Right arrow key.
" imap <silent><script><expr> <End> copilot#Accept("\<CR>")
" imap <silent><script><expr> <Right> copilot#Accept("\<CR>")

" Fast pane resizing (C-w +/-/>/< and keep tapping/holding to resize)
nmap          <leader>+     <C-W>+<SID>ws
nmap          <leader>-     <C-W>-<SID>ws
nn <script>   <SID>ws+   <C-W>+<SID>ws
nn <script>   <SID>ws-   <C-W>-<SID>ws
nmap          <leader>>     <C-W>><SID>ws
nmap          <leader><     <C-W><<SID>ws
nn <script>   <SID>ws>   <C-W>><SID>ws
nn <script>   <SID>ws<   <C-W><<SID>ws
nmap          <SID>ws    <Nop>
