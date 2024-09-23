--vim.g.netrw_banner = 0
vim.opt.guicursor = ""
vim.opt.spelllang = "en_us"
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.laststatus = 2
--vim.opt.colorcolumn = "80"
vim.cmd([[
  highlight DashboardHeader guifg=#f1fa8c
  highlight DashboardCenter guifg=#ff79c6
  highlight DashboardFooter guifg=#f8f8f2
]])
