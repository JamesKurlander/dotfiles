require("config.lazy");
require("config.settings");
require("config.keybinds");

local function find_closest_session()
  local path = vim.fn.expand('%:p:h')

  while path ~= "/" do
    local session_file = path .. "/Session.vim"

    if vim.fn.filereadable(session_file) == 1 then
      return session_file
    end

    path = vim.fn.fnamemodify(path, ':h')
  end

  return nil
end

local session = find_closest_session()

if session then
  vim.cmd('source ' .. session)
end

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    -- Check if Obsession is available before running
    if vim.fn.exists(":Obsession") == 2 then
      vim.cmd("Obsession")
    else
      print("Obsession plugin not loaded.")
    end
  end,
})
