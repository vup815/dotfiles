local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function() builtin.find_files({layout_strategy='vertical',layout_config={width=0.8}}) end)
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

