local M = {}

M.dap_activated = {
    python = true,
}

M.mason_ensure_installed = {
}

-- Function to activate or deactivate DAP for a language, and update mason ensure installed
-- @param language string language for which DAP should be activated or deactivated, ex: "python"
-- @param status boolean status to activate or deactivate DAP
function M.active_dap(language, status)
    M.dap_activated[language] = status
    M.update_mason_ensure_installed()
end

-- Function that updates the list of dap to be installed by mason
function M.update_mason_ensure_installed()
    for lang, activated in pairs(M.dap_activated) do
        if activated then
            table.insert(M.mason_ensure_installed, lang)
        end
    end
end

-- M.update_mason_ensure_installed()

return M
