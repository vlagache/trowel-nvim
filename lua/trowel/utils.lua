local M = {}

-- remaping function
-- @param mode string|table mode(s) in which keybinding should be active, ex: "n" or {"n", "v"}
-- @param shortcut string key sequence to remap, ex: <leader>ff
-- @param command string|function command to execute when keybinding is triggered
-- @param description string description of the keybinding
-- @param opts table: option table ex: { buffer = true, silent = true, noremap = true}
function M.remap(mode, shortcut, command, description, opts)
    local options = { desc = description }
    if opts then
        for key, value in pairs(opts) do
            options[key] = value
        end
    end
    vim.keymap.set(mode, shortcut, command, options)
end

-- Function to determine the Python interpreter path
function M.pythonPath()
    local cwd = vim.fn.getcwd()
    if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
        return cwd .. '/venv/bin/python'
    elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
        return cwd .. '/.venv/bin/python'
    else
        return '/usr/bin/python'
    end
end

return M

