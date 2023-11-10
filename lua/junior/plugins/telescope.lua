local actions = require "telescope.actions"

require("telescope").setup{
  defaults = {
    file_ignore_patterns = { "%.git/.", "node_modules" },
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "truncate" },
    layout_strategy = "center",
    sorting_strategy = "ascending",

    layout_config = {
      center = {
        prompt_position = "top",
        height = 0.5
      }
    },
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
      hidden = true,
      previewer = false
    },
    live_grep = {
      hidden = true,
      previewer = true,
      layout_strategy = "horizontal"
    },
    current_buffer_fuzzy_find = {
      theme = "dropdown",
      previewer = false,
    },
    buffers = {
      theme = "dropdown",
      previewer = false,
      sort_mru = true,
      mappings = {
        i = {
          ["<C-d>"] = actions.delete_buffer
        }
      }
    },
    git_files = {
      hidden = true,
      previewer = false
    }
  },
  extensions = {},
}
