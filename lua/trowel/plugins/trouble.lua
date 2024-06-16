local remap = require("trowel.utils").remap

return {
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            {
                '<leader>tt',
                "<CMD>Trouble diagnostics toggle<CR>",
                desc = 'toggle trouble diagnostics',
            },
        },
        config = function()
            require("trouble").setup()
        end
    }
}
