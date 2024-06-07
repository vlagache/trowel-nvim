local remap = require("trowel.utils").remap

return {
    {
        "folke/trouble.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require("trouble").setup({
                remap("n", "<leader>tt", "<CMD>Trouble diagnostics toggle<CR>", "toggle trouble diagnostics")
            })
        end
   }
}
