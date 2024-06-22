local remap = require("trowel.utils").remap
local dap_config = require("trowel.dap.config")

return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-neotest/nvim-nio",
            "williamboman/mason.nvim",
            "jay-babu/mason-nvim-dap.nvim",
            { "mfussenegger/nvim-dap-python", enabled = dap_config.dap_activated.python },
        },
        keys = {
            "<leader>b",
        },
        config = function()
            local dap = require("dap")
            local ui = require("dapui")

            require("dapui").setup()
            require("nvim-dap-virtual-text").setup()
            require("mason").setup()

            require("mason-nvim-dap").setup({
                ensure_installed = dap_config.mason_ensure_installed,
            })

            if dap_config.dap_activated.python then
                local dap_python = require("trowel.dap.python")
                dap_python.setup()
            end

            vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'ErrorMsg', linehl = '', numhl = '' })
            vim.fn.sign_define('DapStopped', { text = '→', texthl = 'DapStopped' })

            vim.api.nvim_set_hl(0, "DapStopped", { fg = "#F5A97F" })
            remap("n", "<leader>?", function() require("dapui").eval(nil, { enter = true }) end)
            remap("n", "<leader>b", dap.toggle_breakpoint, "toggle breakpoint")
            remap("n", "<F1>", dap.continue, "start debug")

            dap.listeners.before.attach.dapui_config = function()
                ui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                ui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                ui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                ui.close()
            end
        end
    }
}
