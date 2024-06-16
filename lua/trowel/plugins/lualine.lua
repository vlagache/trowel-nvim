return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "AndreM222/copilot-lualine",
        },
        config = function()
            local copilot_config = {
                'copilot',
                symbols = {
                    status = {
                        hl = {
                            enabled = "#24273A",
                            sleep = "#8BD5CA",
                            disabled = "#F5A97F",
                            warning = "#ED8796",
                            unknown = "#F5A97F",
                        }
                    },
                    spinners = require("copilot-lualine.spinners").dots,
                    spinner_color = "#8BD5CA",
                },
                show_colors = true,
            }

            require("lualine").setup({
                options = {
                    theme = "catppuccin"
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { "filename" },
                    lualine_x = { copilot_config, "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { "location" }
                },
                extensions = {
                    "oil",
                    "lazy",
                    "mason",
                    "nvim-dap-ui",
                    "trouble",
                    "neo-tree",
                },
            })
        end
    }
}
