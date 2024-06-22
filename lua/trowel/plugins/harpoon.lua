-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
        prompt_prefix = "🦈 > ",
    }):find()
end

local default_config = {
    keys = {
        { "<leader>a", function() require("harpoon"):list():add() end,     mode = "n", desc = "add file to harpoon" },
        { "<leader>r", function() require("harpoon"):list():remove() end,  mode = "n", desc = "remove file to harpoon" },
        { "<leader>l", function() toggle_telescope(require("harpoon"):list()) end, mode = "n", desc = "harpoon list" }, -- basic telescope configuration
        { "<leader>1", function() require("harpoon"):list():select(1) end, mode = "n", desc = "access to harpoon file 1" },
        { "<leader>2", function() require("harpoon"):list():select(2) end, mode = "n", desc = "access to harpoon file 2" },
        { "<leader>3", function() require("harpoon"):list():select(3) end, mode = "n", desc = "access to harpoon file 3" },
        { "<leader>4", function() require("harpoon"):list():select(4) end, mode = "n", desc = "access to harpoon file 4" },
        { "<C-p>",     function() require("harpoon"):list():prev() end,    mode = "n", desc = "access to previous harpoon file" },
        { "<C-n>",     function() require("harpoon"):list():next() end,    mode = "n", desc = "access to next harpoon file" },
    },
}

return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = default_config.keys,
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup()
        end,
    }
}
