local nvterm = require('nvterm')
local terminal = require('nvterm.terminal')

vim.keymap.set('n', '<C-`>', function() terminal.toggle('horizontal') end)

