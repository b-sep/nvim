local actions = require "telescope.actions"

require("telescope").setup{
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },

    mapping = {
      i = {
        ["<C-c>"] = actions.close,
        ["<tab>"] = actions.move_selection_next,
        ["<S-tab>"] = actions.move_selection_previous,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
     },
      n = {
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
     },
    },
  },
  pickers = {},
  extensions = {},
}
