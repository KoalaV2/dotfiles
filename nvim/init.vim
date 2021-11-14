source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim

colorscheme gruvbox
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:rainbow_active = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:indent_blankline_show_first_indent_level = v:false
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
" let g:coc_global_extensions = ['coc-pyright','coc-json','coc-sh','coc-snippets','coc-tsserver','coc-snippets']
let g:copilot_filetypes = {
      \ 'txt': v:false,
      \ }

autocmd BufWritePre * :%s/\s\+$//e
filetype plugin on

" Continue where last exited in file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Set scrolloff to 25% of the window height.
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/4
augroup END

lua <<EOF
require('nvim-autopairs').setup{}
EOF
