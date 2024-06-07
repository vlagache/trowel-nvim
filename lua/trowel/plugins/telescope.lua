local remap = require("trowel.utils").remap

return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font }
        },
        config = function()
            require('telescope').setup({})

            local builtin = require('telescope.builtin')
            remap('n', '<leader>ff', builtin.find_files, 'telescope find files')
            remap('n', '<leader>fg', builtin.live_grep, 'telescope find grep')
            remap('n', '<leader>fb', builtin.buffers, 'telescope buffers')
            remap('n', '<leader>fh', builtin.help_tags, 'telescope help tags')
            remap('n', '<leader>cs', builtin.colorscheme, 'telescope colorscheme')
            remap('n', '<leader>tgb', builtin.git_branches, 'telescope git branches')
        end
    },
    {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require("telescope").load_extension "frecency"
        end,
    }
}
