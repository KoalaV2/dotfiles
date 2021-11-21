source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim

colorscheme gruvbox
let g:rainbow_active = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:indent_blankline_show_first_indent_level = v:false
" let g:prettier#autoformat = 1
" let g:prettier#autoformat_require_pragma = 0
let g:copilot_filetypes = {
      \ 'txt': v:false,
      \ }
let g:copilot_no_tab_map = v:true

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

" Preserving equal sized split view.
autocmd VimResized * wincmd =

lua <<EOF
require('nvim-autopairs').setup{}
require('gitsigns').setup()
require('luatab').setup{}
require'lualine'.setup {
  options = {
    theme = 'gruvbox-material',
    icons_enabled = false,
    section_separators = ' ',
    component_separators = '|'
  },
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  highlight = {
    enable = true,
    disable = { "html" },  -- list of language that will be disabled
    additional_vim_regex_highlighting = true, -- enable additional highlighting based on vim regexp engine ( Also fixing a odd spellcheck issue. )
  },
}
EOF
