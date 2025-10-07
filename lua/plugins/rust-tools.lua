return {
  "simrat39/rust-tools.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  ft = { "rust" },
  opts = {
    server = {
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = {
            command = "clippy",
          },
          cargo = {
            allFeatures = true,
          },
        },
      },
      -- Add this if you want rust-analyzer to handle formatting
      on_attach = function(client, bufnr)
        -- Enable format on save
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ async = false })
          end,
        })
      end,
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
