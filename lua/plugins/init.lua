return {

  -- formatter
  {
    "stevearc/conform.nvim",
    opts = require("configs.conform"),
  },

  -- lsp
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require("configs.lspconfig")
    end,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "vim",
        "vimdoc",
        "lua",

        "c",
        "cpp",
        "python",
        "java",
        "bash",
        "rust",

        "html",
        "css",
        "json",

        "markdown",
        "markdown_inline",
      },
    },
  },

  -- scope/chunk highlight
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("configs.chunk")
    end,
  },

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
  },

  -- nvzone deps
  { "nvzone/volt", lazy = true },
  { "nvzone/menu", lazy = true },

  -- timer
  {
    "nvzone/timerly",
    dependencies = "nvzone/volt",
    cmd = "Timerly",
    opts = {},
  },

  -- typing speed
  {
    "slowy07/mywpm.nvim",
    event = "VeryLazy",
    config = function()
      require("configs.mywpm")
    end,
  },

  -- cmake
  {
    "Civitasv/cmake-tools.nvim",
    opts = {},
  },

  -- diagnostics panel
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    opts = {},
  },

  -- real-icons return {
  {
    "Mirsmog/real-icons.nvim",
    lazy = false,
    build = ":RealIconsInstallPack material",

    config = function()
      require("configs.real-icons")()
    end,
  },

  {
    "https://codeberg.org/FelipeLema/cmp-async-path.git",
    enabled = false,
  },

}
