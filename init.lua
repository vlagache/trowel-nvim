local dap_config = require("trowel.dap.config")

vim.g.mapleader = " "

-- dap config 
dap_config.active_dap("python", true)


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec             = "trowel.plugins",
    change_detection = { notify = false }
})
