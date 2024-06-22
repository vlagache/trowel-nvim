local M = {}

-- Path to the python interpreter installed by mason
local python_debugpy_path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"

function M.setup()
    require("dap-python").setup(python_debugpy_path)

end

return M
