require "nvchad.mappings"
local map = vim.keymap.set

map("n", ";", ":", { desc = "Enter command mode" })
map("v", ">", ">gv", { desc = "indent" })



map("n", "<leader>lg", ":LazyGit<cr>", { desc = "Open LazyGit" })

-- Telescope
map("n", "<leader>fs", function()
  require('telescope.builtin').lsp_document_symbols({ symbols={'function', 'class', 'method'} })
end, { desc = "Telescope Find Symbols" })
map("n", "<leader>fg", ":Telescope git_files<cr>", { desc = "Telescope Find Git Files" })
map("n", "<leader>ff", ":Telescope find_files<cr>", { desc = "Telescope Find Files" })



-- LSP Config
map("n", "<leader>fm", function()
        vim.lsp.buf.format { async = true }
end, { desc = "LSP Format" })

map("n", "gD", function()
    vim.lsp.buf.declaration()
end, { desc = "LSP Declaration" })

map("n", "gd", function()
    vim.lsp.buf.definition()
end, { desc = "LSP Definition" })

map("n", "<leader>ra", function()
    vim.lsp.buf.rename()
end, { desc = "LSP Rename" })

map("n", "ca", function()
    vim.lsp.buf.code_action()
end, { desc = "LSP code action" })

map("n", "gr", function()
    vim.lsp.buf.references()
end, { desc = "LSP References" })

map("n", "K", function()
    vim.lsp.buf.hover()
end, { desc = "LSP Hover" })




map('v', "<leader>tc", ":s/\\%V\\<./\\u&/g<cr>", { desc = "Title Case" })

map("n", "<leader>rp", ':!python "%"<cr>', { desc = "Run current python file" })

-- Compliling documents
map("n", "<leader>col", ':!pdflatex "%"<cr>', { desc = "Compile current latex file"})
map("n", "<leader>com", ':!pandoc "%" -o "%:r"<cr>', { desc = "Compile current markdown file"})

map("n", "<leader>gpt", ':GpChatToggle popup<cr>', { desc = "Open GPT"})

-- Defaults
map("n", "<A-i>", function()
  require("nvchad.term").toggle({ pos = "sp", id ='abc' })
end, { desc = "Terminal toggle floating" })

-- ["<leader>fm"] = {
--       function()

--       end,
--       "LSP formatting",
--     },


-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-k>")
nomap("n", "<C-k>")
