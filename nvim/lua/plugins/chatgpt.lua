return {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "folke/trouble.nvim",
        "nvim-telescope/telescope.nvim"
    },
    config = function()
        require("chatgpt").setup({
                api_key_cmd = "echo $OPENAI_API_KEY",
            })


        vim.keymap.set("n", "<leader>cc", ':ChatGPT<CR>', { noremap = true, silent = true })
    end
}
