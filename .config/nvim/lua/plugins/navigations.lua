return {
    {
        "eoh-bse/minintro.nvim",
        config = true,
        lazy = false,
    },
    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
        config = function()
            require("oil").setup({
                default_file_explorer = true,
            })
        end,
    },
}
