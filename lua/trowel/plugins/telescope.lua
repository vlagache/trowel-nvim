local default_config = {
    keys = {
        { "<leader>ff",  require("telescope.builtin").find_files,   mode = "n", desc = "telescope find files" },
        { "<leader>fg",  require("telescope.builtin").live_grep,    mode = "n", desc = "telescope find grep" },
        { "<leader>fb",  require("telescope.builtin").buffers,      mode = "n", desc = "telescope buffers" },
        { "<leader>fh",  require("telescope.builtin").help_tags,    mode = "n", desc = "telescope help tags" },
        { "<leader>cs",  require("telescope.builtin").colorscheme,  mode = "n", desc = "telescope colorscheme" },
        { "<leader>tgb", require("telescope.builtin").git_branches, mode = "n", desc = "telescope git branches" },
    },
}

return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = {
            'nvim-lua/plenary.nvim',
            "nvim-telescope/telescope-frecency.nvim",
            { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font }
        },
        keys = default_config.keys,
        config = function()
            require('telescope').setup({})
            require("telescope").load_extension "frecency"
        end
    },
}
