return {
    {

        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            {
                '<leader>fe',
                function()
                    require('neo-tree.command').execute({ toggle = true, dir = "." })
                end,
                desc = 'Explorer NeoTree (root dir)',
            },
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true,
                window = {
                    width = 30,
                },
                filesystem = {
                    follow_current_file = true,
                    use_libuv_file_watcher = true,
                },
                defualt_component_configs = {
                    git_status = {
                        symbols = {
                            -- Change type
                            added = "✚",
                            modified = "",
                            deleted = "❌",
                            renamed = "🔄",
                            -- Status type
                            untracked = "",
                            ignored = "🚫",
                            unstaged = "◯",
                            staged = "●",
                            conflict = "⚡",
                        },
                    }
                },
            })
        end
    }
}
