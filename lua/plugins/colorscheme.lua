return {
  -- -- add gruvbox
  { "ellisonleao/gruvbox.nvim", lazy = true },
  --
  -- -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "gruvbox",
  --   },
  -- },
  -- add zephyr
  { "glepnir/zephyr-nvim", lazy = true },
  --
  -- -- Configure LazyVim to load zephyr
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "zephyr",
  --   },
  -- },
  --
  --  Add Github colorscheme
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
  },
  {

    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.schedule(function()
          if vim.o.background == "light" then
            vim.cmd("colorscheme github_light")
          else
            vim.cmd("colorscheme github_dark")
          end
        end)
      end,
    },
  },
}
