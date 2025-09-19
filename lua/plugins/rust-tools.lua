return {
  "simrat39/rust-tools.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  ft = { "rust" }, -- Only load for Rust files
  opts = {
    server = {
      -- This will automatically use your existing lsp-zero on_attach
      -- and capabilities, so no need to redefine them here
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = {
            command = "clippy",
          },
          -- Add any other rust-analyzer specific settings you want
          cargo = {
            allFeatures = true,
          },
        },
      },
    },
    tools = {
      inlay_hints = {
        auto = true,
        show_parameter_hints = true,
      },
    },
  },
  config = function(_, opts)
    require("rust-tools").setup(opts)
  end,
}
