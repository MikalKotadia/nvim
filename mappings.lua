--@type MappingsTable

local M = {}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
    },
    v = {
        [">"] = { ">gv", "indent" },
    },
}

M.telescope = {
    n = {
        ["<leader>fg"] = { ":Telescope git_files<cr>", "Search git files", opts = { nowait = true } },
        ["<leader>fs"] = {
            ":lua require('telescope.builtin').lsp_document_symbols({ symbols={'function', 'class', 'method'} })<cr>",
            "View all functions",
            opts = { nowait = true },
        },
    },
}

M.lazygit = {
    n = {
        ["<leader>lg"] = { ":LazyGit<cr>", "Open lazygit", opts = { nowait = true } },
    },
}

M.case_formatting = {
    v = {
        ["<leader>tc"] = { ":s/\\%V\\<./\\u&/g<cr>", "convert current line to title case", opts = { nowait = true } },
    },
}
M.code_running = {
    n = {
        ["<leader>rp"] = { ':!python "%"<cr>', "Run the current buffer in python" },
    },
}

M.compiling = {
    n = {
        ["<leader>col"] = { ':!pdflatex "%"<cr>', "Compile the current tex file to pdf" },
    },
}

M.chatgpt = {
    v = {
        ["<leader>ds"] = {':ChatGPTRun docstring<cr>', 'generate docstring with chatgpt'},
    },
}


-- more keybinds!

return M
