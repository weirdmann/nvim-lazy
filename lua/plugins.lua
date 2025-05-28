return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  "folke/neoconf.nvim", 
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  'mbbill/undotree',
  'catppuccin/nvim',
  {'nvim-tree/nvim-tree.lua', dependencies={'nvim-tree/nvim-web-devicons'}},
 {
  'stevearc/dressing.nvim',
},

{
  'L3MON4D3/LuaSnip',
  version = 'v2.*',
  build = 'make install_jsregexp',
}, 

{
  'nvim-lualine/lualine.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', lazy = true },
  },
},
{
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
},

'karb94/neoscroll.nvim',
"hrsh7th/nvim-cmp",
"hrsh7th/cmp-buffer",
"hrsh7th/cmp-path",
{
'VonHeikemen/lsp-zero.nvim',
dependencies = {
'williamboman/mason.nvim',
'williamboman/mason-lspconfig.nvim',
'neovim/nvim-lspconfig',
'hrsh7th/nvim-cmp',
'hrsh7th/cmp-nvim-lsp',
'L3MON4D3/LuaSnip',
},
config = function()
local lsp_zero = require('lsp-zero')

    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({ buffer = bufnr })
    end)

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = { "rust_analyzer", "pyright", "gopls" },
      handlers = {
        lsp_zero.default_setup,
      },
    })

end,
},

{
  "max397574/better-escape.nvim",
  config = function()
    require("better_escape").setup({
      mappings = {
    -- i for insert, other modes are the first letter too
    i = {
        -- map kj to exit insert mode
        k = {
            j = "<Esc>",
        },
        -- map jk and jj  to exit insert mode
        j = {
            k = "<Esc>",
            j = "<Esc>",
        },
        -- disable jj
        j = {
            j = false,
        },
    }
}
    })
  end,
},
{
  'cameron-wags/rainbow_csv.nvim',
  config = function()
    require('rainbow_csv').setup()
  end,
  lazy = true,
  ft = {
    'csv',
    'tsv',
    'csv_semicolon',
    'csv_whitespace',
    'csv_pipe',
    'rfc_csv',
    'rfc_semicolon',
  },
},

{
  'vidocqh/data-viewer.nvim',
},

}
