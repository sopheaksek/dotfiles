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
keymap.set("n", "<C-d>", function()
    vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>pv", ":Ex<CR>")

keymap.set("n", "<leader>F", vim.lsp.buf.hover)
keymap.set({ "n", "v" }, "<leader>ff", vim.lsp.buf.format, {})
