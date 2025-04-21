return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")

      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json", "*.css", "*.scss", "*.html", "*.md" },
        callback = function()
          vim.lsp.buf.format()
        end,
      }) 

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier, -- Use Prettier for formatting
        },
      })
    end
  }
}
