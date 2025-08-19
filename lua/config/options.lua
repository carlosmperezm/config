-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.scriptingcoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.breakindent = true
vim.opt.wrap = true -- Wrap the text
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitkeep = "cursor"
vim.opt.mouse = "" -- Disable mouse
vim.opt.formatoptions:append({ "r" })
vim.opt.showtabline = 0 -- Disable the tabs on top

-- Allow neovim to set the title of the window to the name of the current buffer
vim.opt.title = true

-- Set the spell checker to on all the time
vim.opt.spell = true

-- Set cursor always block
vim.opt.guicursor =
  "i-ci-ve:block-blinkwait0-blinkoff400-blinkon400-Cursor7/lCursor7,r-cr:hor20-Cursor4/lCursor4,o:hor50"

-- Colorize line with insert mode
vim.api.nvim_create_augroup("CursorLineMode", { clear = true })
-- Cursor line behavior in INSERT MODE
vim.api.nvim_create_autocmd("InsertEnter", {
  group = "CursorLineMode",
  callback = function()
    local color_line = "NONE"
    -- if vim.o.background == "light" then
    --   color_line = "#cccccc"
    -- end
    vim.api.nvim_set_hl(0, "CursorLine", { bg = color_line })
  end,
})
-- Cursor line behavior out INSERT MODE
vim.api.nvim_create_autocmd("InsertLeave", {
  group = "CursorLineMode",
  callback = function()
    local color_line = "#484c63"
    if vim.o.background == "light" then
      color_line = "#cccccc"
    end
    vim.api.nvim_set_hl(0, "CursorLine", { bg = color_line })
  end,
})
