---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}


M.telescope = {
  n = {
    ["<leader>ff"] = { ":Telescope git_files<cr>", "Search git files", opts = { nowait = true } },
    ["<leader>fa"] = { ":Telescope find_files<cr>", "Search all files", opts = { nowait = true } },
  },
}

M.lazygit = {
  n = {
    ["<leader>lg"] = { ":LazyGit<cr>", "Open lazygit", opts = { nowait = true } }
  },
}
-- more keybinds!

return M
