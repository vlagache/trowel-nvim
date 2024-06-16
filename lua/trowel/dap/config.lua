local M = {}

M.dap_activated = {
    python = true,
}

M.mason_ensure_installed = {
}

function M.active_dap(language, status)
    M.dap_activated[language] = status
    M.update_mason_ensure_installed()
end

function M.update_mason_ensure_installed()
    for lang, activated in pairs(M.dap_activated) do
        if activated then
            table.insert(M.mason_ensure_installed, lang)
        end
    end
end

M.update_mason_ensure_installed()

return M
