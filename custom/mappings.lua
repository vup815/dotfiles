---@type MappingsTable

local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>pv"] = {"<cmd> ex <CR>"},
    ["n"] = {"nzzzv", "zz after move to next find"},
    ["N"] = {"Nzzzv", "zz after move to prev find"},
    ["<CR>"] = {"ciw", "ciw in normal mode"},
    ["<leader><tab>"] = {
      function()
        require("nvchad_ui.tabufline").closeAllBufs()
      end,
      "close all buffers",
    },

  },
  v = {
    ["J"] = {":m '>+1<CR>gv=gv", "move selected lines up"},
    ["K"] = {":m '<-2<CR>gv=gv", "move selected lines down"},
  }
}

M.nvterm = {
  plugin = true,

  t = {
    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },

  n = {
    -- toggle in normal mode

    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
  },
}

-- more keybinds!

return M
