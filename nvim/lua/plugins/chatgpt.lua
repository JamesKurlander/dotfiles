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
            openai_params = {
                model = 'chatgpt-4o-latest',
                max_tokens = 4095,
            },
            chat = {
                welcome_message = 'Ask me anything...',
                answer_sign = '🤖',
                question_sign = '🤔',
            },
            popup_layout = {
                default = 'right',
                right = {
                    width = '50%',
                },
            },
            popup_window = {
                border = {
                    text = {
                        top = " ChatGPT ",
                    },
                },
            },
            popup_input = {
                submit = '<Enter>',
            }
        })

    vim.keymap.set("n", "<leader>cc", ':ChatGPT<CR>', { noremap = true, silent = true })
end
}
