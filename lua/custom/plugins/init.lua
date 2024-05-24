return {
  {
    -- Autoformatting
    "stevearc/conform.nvim",
    config = function()
      -- Autoformatting Setup
      require("conform").setup {
        formatters_by_ft = {
          lua = { "stylua" },
        },
      }

      vim.api.nvim_create_autocmd("BufWritePre", {
        callback = function(args)
          require("conform").format {
            bufnr = args.buf,
          }
        end,
      })
    end,
  },
}
