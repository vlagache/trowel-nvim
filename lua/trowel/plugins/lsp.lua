local remap = require("trowel.utils").remap
return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        lazy = true,
        config = false,
        init = function()
            vim.g.lsp_zero_extend_cmp = 0
            vim.g.lsp_zero_extend_lspconfig = 0
        end,
    },
    {
        "williamboman/mason.nvim",
        lazy = true,
        config = true,
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "L3MON4D3/LuaSnip",
            "onsails/lspkind.nvim",
        },
        config = function()
            local lsp_zero = require("lsp-zero")
            local cmp = require("cmp")
            local lsp_kind = require("lspkind")
            lsp_zero.extend_cmp()
            -- auto-completion configuration
            cmp.setup({
                sources = {
                    { name = "nvim_lsp", group_index = 2 },
                    -- { name = "copilot",  group_index = 2 },
                },
                formatting = {
                    format = lsp_kind.cmp_format({
                        mode = "symbol_text",
                        max_width = 50,
                        -- symbol_map = {
                        --     Copilot = "",
                        -- }

                    })
                },
                mapping = cmp.mapping.preset.insert({
                    ['<Cr>'] = cmp.mapping.confirm({ select = true })
                })
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        cmd = { "LspInfo", "LspInstall", "LspStart" },
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "williamboman/mason-lspconfig.nvim" },
        },
        config = function()
            local lsp_zero = require("lsp-zero")
            local lsp_config = require("lspconfig")
            lsp_zero.extend_lspconfig()

            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({ buffer = bufnr })
            end)
            lsp_zero.set_sign_icons({
                error = "",
                warn = "",
                hint = "",
                info = "",
            })
            require("mason").setup({})
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                },
                handlers = {
                    -- default handler, apply to every language server without a custom handler
                    function(server_name)
                        lsp_config[server_name].setup({})
                    end,

                    -- Lua
                    lua_ls = function()
                        lsp_config.lua_ls.setup({
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim" }
                                    }
                                }
                            }
                        })
                    end,

                    -- Python
                    pyright = function()
                        lsp_config.pyright.setup({})
                    end
                }
            })

            -- keymaps
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local opts = { buffer = args.buf }
                    remap({ "n", "v" }, "<leader>fo", vim.lsp.buf.format, "lsp format file", opts)
                end
            })
        end
    }
}
