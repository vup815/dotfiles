local api = require('nvim-tree.api')
vim.keymap.set('n', '<C-n>', function() api.tree.toggle() end)
vim.keymap.set('n', '<leader>e', function() api.tree.focus() end)
