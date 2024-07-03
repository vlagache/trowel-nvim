return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                panel = { enabled = false },
                -- suggestion = { enabled = false },
                suggestion = {
                    auto_trigger = true,
                    keymap = {
                        accept = "<leader><Tab>",
                        reject = "<ESC>",
                        next = "<C-j>",
                        prev = "<C-k>",
                    },
                },
                -- node.js version must be 18.x or newer
                copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v22.1.0/bin/node",
            })
        end
    },
    -- {
    --     "zbirenbaum/copilot-cmp",
    --     config = function()
    --         require("copilot_cmp").setup()
    --     end
    -- }
}
