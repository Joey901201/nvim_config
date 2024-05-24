local M = {}

local builtin = require "el.builtin"
local extensions = require "el.extensions"
local subscribe = require "el.subscribe"
local sections = require "el.sections"

M.setup = function()
  require("el").setup {
    generator = function(win_id)
      local segments = {}

      table.insert(segments, extensions.mode)
      table.insert(segments, " ")
      table.insert(
        segments,
        subscribe.buf_autocmd("el_git_branch", "BufEnter", function(window, buffer)
          local branch = extensions.git_branch(window, buffer)
          if branch then
            return branch
          end
        end)
      )
      table.insert(
        segments,
        subscribe.buf_autocmd("el_git_changes", "BufWritePost", function(window, buffer)
          local changes = extensions.git_changes(window, buffer)
          if changes then
            return changes
          end
        end)
      )
      table.insert(segments, sections.split)
      table.insert(segments, "%f")
      table.insert(segments, sections.split)

      return segments
    end,
  }
end

return M
