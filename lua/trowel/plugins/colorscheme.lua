return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup {
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
