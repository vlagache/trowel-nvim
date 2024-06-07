local remap = require("trowel.utils").remap

return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup()

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

            remap("n", "<leader>a", function() harpoon:list():add() end, "add file to harpoon")
            remap("n", "<leader>r", function() harpoon:list():remove() end, "remove file to harpoon")
            remap("n", "<leader>l", function() toggle_telescope(harpoon:list()) end, "harpoon list")

            remap("n", "<leader>1", function() harpoon:list():select(1) end, "access to harpoon file 1")
            remap("n", "<leader>2", function() harpoon:list():select(2) end, "access to harpoon file 2")
            remap("n", "<leader>3", function() harpoon:list():select(3) end, "access to harpoon file 3")
            remap("n", "<leader>4", function() harpoon:list():select(4) end, "access to harpoon file 4")

            -- Toggle previous & next buffers stored within Harpoon list
            remap("n", "<C-p>", function() harpoon:list():prev() end, "access to previous harpoon file")
            remap("n", "<C-n>", function() harpoon:list():next() end, "access to next harpoon file")
        end,
    }
}
