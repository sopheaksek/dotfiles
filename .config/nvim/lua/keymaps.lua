local keymap = vim.keymap
local opts = { noremap = true }

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- switch window
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-l>", "<C-w>l")

-- Diagnostics
keymap.set("n", "<leader>D", function()
    vim.diagnostic.goto_next()
end, opts)

-- File explorer
keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open file explorer" })

-- lsp
keymap.set("n", "<leader>F", vim.lsp.buf.hover)
keymap.set({ "n", "v" }, "<leader>ff", vim.lsp.buf.format, {})

-- telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Search Git Files" })
keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

keymap.set("n", "<leader>/", function()
    builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
    }))
end, { desc = "[/] Fuzzily search in current buffer" })
