return {
    {
        "nvim-telescope/telescope.nvim",
        event = "VimEnter",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",

                -- `build` is used to run some command when the plugin is installed/updated.
                -- This is only run then, not every time Neovim starts up.
                build = "make",

                -- `cond` is a condition used to determine whether this plugin should be
                -- installed and loaded.
                cond = function()
                    return vim.fn.executable("make") == 1
                end,
            },
            "nvim-telescope/telescope-ui-select.nvim",
        },
        config = function()
            require("telescope").setup({
                defaults = {
                    layout_strategy = "vertical",
                },
                pickers = {
                    find_files = {
                        no_ignore = true,
                        theme = "dropdown",
                        hidden = true,
                        -- needed to exclude some files & dirs from general search
                        file_ignore_patterns = { "node_modules", ".git", ".nuxt", "tmp" },
                    },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })

            pcall(require("telescope").load_extension, "fzf")
            pcall(require("telescope").load_extension, "ui-select")
        end,
    },
}
