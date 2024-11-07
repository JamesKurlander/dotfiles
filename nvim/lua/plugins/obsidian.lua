return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    disable_frontmatter = true,
    workspaces = {
      {
        name = "work",
        path = "~/vaults",
      },
    },
  },
}
