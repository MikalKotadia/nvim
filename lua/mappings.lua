require "nvchad.mappings"
local map = vim.keymap.set

map("n", ";", ":", { desc = "Enter command mode" })
map("v", ">", ">gv", { desc = "indent" })


map("n", "<leader>fg", ":Telescope git_files<cr>", { desc = "Search Git Files" })
map("n", "<leader>ff", ":Telescope find_files<cr>")

map("n", "<leader>lg", ":LazyGit<cr>", { desc = "Open LazyGit" })

map("n", "<leader>fs", function()
  require('telescope.builtin').lsp_document_symbols({ symbols={'function', 'class', 'method'} })
end, { desc = "Search Git Files" })

map('v', "<leader>tc", ":s/\\%V\\<./\\u&/g<cr>", { desc = "Title Case" })


map("n", "<leader>rp", ':!python "%"<cr>', { desc = "Run current python file" })


map("n", "<leader>col", ':!pdflatex "%"<cr>', { desc = "Compile current latex file"})
map("n", "<leader>com", ':!pandoc "%" -o "%:r"<cr>', { desc = "Compile current markdown file"})

map("n", "<leader>gpt", ':GpChatToggle popup<cr>', { desc = "Open GPT"})

-- mapping with a lua function
map("n", "<A-i>", function()
  require("nvchad.term").toggle({ pos = "sp", id ='abc' })
end, { desc = "Terminal toggle floating" })


-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-k>")
nomap("n", "<C-k>")
