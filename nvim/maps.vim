let mapleader = " "
nnoremap <C-j> :GFiles<CR>
nnoremap <C-k> :GFiles?<CR>
nnoremap <leader>h :wincmd h<cr>
inoremap <S-Tab> <C-d>
nnoremap <S-Tab> <<
nnoremap <leader>e :CocCommand explorer<CR>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<cr>
nmap <leader>gd <Plug>(coc-defenition)
nmap <leader>gr <Plug>(coc-references)
