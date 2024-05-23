
return{
  {
    "hrsh7th/nvim-cmp", 
    dependencies = {
      "onsails/lspkind.nvim",
    },
    config = function()
      vim.opt.completeopt = {"menu", "menuone", "noselect"}
      vim.opt.shortmess:append "c"

      local lspkind = require("lspkind")
      lspkind.init{}
      local cmp = require("cmp")

      cmp.setup {
        mapping = {
        }
      }
    end,
  },
}
