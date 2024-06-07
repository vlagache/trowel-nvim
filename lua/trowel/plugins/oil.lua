local remap = require("trowel.utils").remap

return {
    {
        "stevearc/oil.nvim",
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup {
                view_options = {
                    show_hidden = true,
                },
            }
            -- Open parent directory in current window
            remap("n", "-", "<CMD>Oil<CR>", "Open parent directory")
        end
    }
}
