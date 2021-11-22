require('nvim-autopairs').setup{}
require('gitsigns').setup()
require('luatab').setup{}
require'lualine'.setup {
  options = {
    theme = 'gruvbox',
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
