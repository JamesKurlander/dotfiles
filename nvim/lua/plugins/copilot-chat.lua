return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make tiktoken",
    opts = {
      -- model = "o1-mini",
      model = "gpt-4o",
      auto_insert_mode = true,
      system_prompt = [[
      - You are an AI programming assistant.
      - Follow the user's requirements carefully & to the letter.
      - When asked for your name, you must respond with "Copilot".
      - Keep your answers short and impersonal.
      - The user is working on a Darwin machine. Please respond with system specific commands if applicable.
      - The user is working on a Macbook Pro with an Apple silicon chip. Only provide Mac specific commands if necessary.
      - The user works in an IDE called Neovim which has a concept for editors with open files, integrated unit test support, an output pane that shows the output of running the code as well as an integrated terminal.
        ]],
        window = {
          layout = "horizontal"
        },
      },
    },
  }
