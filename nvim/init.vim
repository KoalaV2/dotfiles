source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim

colorscheme gruvbox
" let g:copilot_node_command = '/home/theo/.nvm/versions/node/v17.9.0/bin/node'
let g:rainbow_active = 1
let g:indent_blankline_show_first_indent_level = v:false
" let g:copilot_no_tab_map = v:true
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

autocmd BufWritePre * :%s/\s\+$//e
filetype plugin on

" Continue where last exited in file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Set scrolloff to 25% of the window height and sidescrolloff to 25% of the window width:
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/4
        \ | let &sidescrolloff=winwidth(win_getid())/4
augroup END

" Preserving equal sized split view.
autocmd VimResized * wincmd =

lua <<EOF
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
require('lsp')
require('plugins')
require('Comment').setup()
require('gitsigns').setup{
    keymaps = {} -- Disable keymaps made by gitsigns.
}
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
require('nvim-autopairs').setup{}
require('luatab').setup{}
require'lualine'.setup {
  options = {
    theme = 'gruvbox',
    icons_enabled = true,
    section_separators = ' ',
    component_separators = '|'
  }
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true, -- enable additional highlighting based on vim regexp engine ( Also fixing a odd spellcheck issue. )
  },
}
require("presence"):setup({
        -- General options
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
    main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = false,                      -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = true,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time           = true,                       -- Show the timer

    -- Rich Presence text options
    editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})
-- vim.cmd("highlight Normal guibg=none")
-- vim.cmd("highlight NonText guibg=none")
-- vim.cmd("highlight Normal ctermbg=none")
-- vim.cmd("highlight NonText ctermbg=none")
EOF
