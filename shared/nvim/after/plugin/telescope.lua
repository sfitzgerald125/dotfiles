local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', ":Telescope find_files hidden=true<cr>", {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
