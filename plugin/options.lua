local opt = vim.opt

opt.number = true
opt.cursorline = true
opt.cursorlineopt = "number"

opt.clipboard = "unnamedplus"

opt.smartcase = true
opt.ignorecase = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true
opt.termguicolors = true

opt.equalalways = true
opt.splitright = true
opt.eadirection = "both"

opt.updatetime = 250

opt.fillchars = opt.fillchars + 'diff: '
