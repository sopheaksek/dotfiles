return {
    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
        config = function()
            require("oil").setup({
                view_options = {
                    -- Show files and directories that start with "."
                    show_hidden = true,
                },
                keymaps = {
                    ["<C-h>"] = false,
                },
                default_file_explorer = true,
            })
        end,
    },
}
