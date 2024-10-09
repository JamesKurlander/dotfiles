return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('harpoon').setup({})

        local mark = require('harpoon.mark')
        local ui = require('harpoon.ui')

        -- Keybindings
        vim.keymap.set("n", "<leader>a", function() mark.add_file() end, { desc = "Add file to Harpoon" })
        vim.keymap.set("n", "<C-e>", function() ui.toggle_quick_menu() end, { desc = "Toggle Harpoon menu" })

        vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Navigate to Harpoon file 1" })
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = "Navigate to Harpoon file 2" })
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Navigate to Harpoon file 3" })
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Navigate to Harpoon file 4" })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-S-P>", function() ui.nav_prev() end, { desc = "Navigate to previous Harpoon file" })
        vim.keymap.set("n", "<C-S-N>", function() ui.nav_next() end, { desc = "Navigate to next Harpoon file" })
    end
}
