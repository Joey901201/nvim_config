return {
  {"nvim-lua/plenary.nvim"},
  {"nvim-telescope/telescope.nvim",
    config = function()
      local builtin =require("telescope.builtin")

      vim.keymap.set("n","<space>fd", function()
        builtin.find_files()
      end)

    end }
}
