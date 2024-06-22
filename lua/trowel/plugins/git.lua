local remap = require("trowel.utils").remap

local default_config = {
    neogit = {
        keys = {
            { "<leader>ng",  "<CMD>Neogit<CR>",                mode = "n", desc = "open neogit" },
            { "<leader>dv",  "<CMD>DiffviewOpen<CR>",          mode = "n", desc = "open diffview" },
            { "<leader>dfh", "<CMD>DiffviewFileHistory %<CR>", mode = "n", desc = "open diffview file history" },
        },
    },
}

return {
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration
            "nvim-telescope/telescope.nvim", -- optional
        },
        keys = default_config.neogit.keys,
        config = function()
            require("neogit").setup({})
        end
    },
    {
        'akinsho/git-conflict.nvim',
        version = "*",
        config = true,
        event = "VeryLazy",
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
