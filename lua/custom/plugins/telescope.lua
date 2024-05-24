return {
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup {
        extensions = {
          fzf = {},
        },
      }

      pcall(require("telescope").load_extension, "fzf")

      local builtin = require "telescope.builtin"

      vim.keymap.set("n", "<leader>fd", builtin.find_files)
      vim.keymap.set("n", "<leader>fh", builtin.help_tags)

      vim.keymap.set("n", "<leader>en", function()
        builtin.find_files { cwd = vim.fn.stdpath "config" }
      end)
    end,
  },
}
