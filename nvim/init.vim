source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim

colorscheme gruvbox
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:rainbow_active = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:indent_blankline_show_first_indent_level = v:false
let g:coc_global_extensions = ['coc-explorer','coc-discord-rpc','coc-pyright','coc-prettier','coc-json','coc-sh','coc-snippets','coc-tsserver']
" let g:indent_blankline_space_char = '*'

autocmd BufWritePre * :%s/\s\+$//e
filetype plugin on

" let g:indent_blankline_filetype_exclude = ['json','txt']

" Continue where last exited in file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

command! -nargs=0 Prettier :CocCommand prettier.formatFile
