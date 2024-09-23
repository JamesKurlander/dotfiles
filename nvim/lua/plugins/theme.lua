return {
  "folke/tokyonight.nvim",
  lazy = false,
  config = function()
      vim.g.tokyonight_style = "night"
      vim.g.tokyonight_transparent = false
      vim.g.tokyonight_lualine_bold = true
      vim.cmd[[colorscheme tokyonight]]
  end
}
