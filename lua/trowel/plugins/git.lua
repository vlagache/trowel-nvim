local remap = require("trowel.utils").remap

return {
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration
            "nvim-telescope/telescope.nvim", -- optional
        },
        event = "VeryLazy",
        config = function()
            require("neogit").setup({})
            remap("n", "<leader>ng", "<CMD>Neogit<CR>", "open neogit")
            remap("n", "<leader>dv", "<CMD>DiffviewOpen<CR>", "open diffview")
            remap("n", "<leader>dfh", "<CMD>DiffviewFileHistory %<CR>", "open diffview file history")
        end
    },
    {
        'akinsho/git-conflict.nvim',
        version = "*",
        config = true,
        event = "BufRead",
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = function()
            require("gitsigns").setup {
                current_line_blame = true,
                current_line_blame_formatter = '<author>, <author_time:%d-%m-%Y> - <summary>',
            }
            remap("n", "<leader>ph", "<CMD>Gitsign preview_hunk<CR>", "preview hunk")
        end
    }
}
