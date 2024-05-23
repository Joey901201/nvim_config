return {
  {"nvim-lua/plenary.nvim"},
  {"nvim-telescope/telescope.nvim", branch = '0.1.x',
    config = function()
      local builtin =require("telescope.builtin")

      vim.keymap.set("n","<space>fd", function()
        builtin.find_files()
      end)

    end }
}
