return {
    {
        "stevearc/oil.nvim",
        opts = {},
        depenencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup {
                view_options = {
                    show_hidden = true,
                },
            }
            -- Open parent directory in current window
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end
    }
}
