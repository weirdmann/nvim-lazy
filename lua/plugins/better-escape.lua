return {
{
  "max397574/better-escape.nvim",
  config = function()
    require("better_escape").setup({
      default_mappings = false,
      mappings = {
    -- i for insert, other modes are the first letter too
    i = {
        -- map kj to exit insert mode
        k = {
            j = "<Esc>",
        },
        -- map jk to exit insert mode
        j = {
            k = "<Esc>",
        },
    },
    v = {}
}
    })
  end,
},
}
