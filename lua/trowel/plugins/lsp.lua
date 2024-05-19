return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "onsails/lspkind.nvim",
        },
        config = function()
            local lsp_zero = require("lsp-zero")
            local lsp_config = require("lspconfig")
            local cmp = require("cmp")
            local lsp_kind = require("lspkind")

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

                }
            })

            -- auto-completion configuration
            cmp.setup({
                sources = {
                    { name = "nvim_lsp" }
                },
                formatting = {
                    format = lsp_kind.cmp_format({
                        mode = "symbol_text",
                        max_width = 50,
                    })
                },
                mapping = cmp.mapping.preset.insert({
                    ['<Cr>'] = cmp.mapping.confirm({ select = true })
                })
            })

            -- keymaps
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local opts = { buffer = args.buf }
                    vim.keymap.set({ "n", "v" }, "<leader>ff", vim.lsp.buf.format, opts)
                end
            })
        end
    }
}