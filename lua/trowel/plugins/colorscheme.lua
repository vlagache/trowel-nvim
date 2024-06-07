return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup {
                integrations = {
                    diffview = true,
                    mason = true,
                    neotree = true,
                    lsp_trouble = true,
                },
				custom_highlights = function(colors)
					return {
						CursorLineNr = { fg = colors.teal},
					}
				end
			}
			vim.cmd.colorscheme "catppuccin-macchiato"
		end
	}
}
