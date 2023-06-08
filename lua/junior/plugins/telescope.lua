local actions = require "telescope.actions"

require("telescope").setup{
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "truncate" },

    mapping = {
      i = {
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
      },
      n = {
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
     },
    },
  },
  pickers = {
    find_files = {
      hidden = true
    }
  },
  extensions = {},
}
