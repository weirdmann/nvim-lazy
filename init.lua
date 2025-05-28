function string:endswith(suffix)
    return self:sub(-#suffix) == suffix
end

require("config.lazy")
require("nvim-cmp")

vim.cmd.colorscheme "catppuccin"
vim.cmd.set "number" 
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      require("telescope.builtin").find_files()
    end
  end,
})
vim.cmd.set "tabstop=2"
vim.cmd.set "shiftwidth=2"
vim.cmd.set "expandtab"
vim.cmd.set "cursorline"

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen)
vim.keymap.set('n', '<Leader>ya', '<cmd>%y+<cr>')
vim.keymap.set("", '<C-Z>', '<nop>');
