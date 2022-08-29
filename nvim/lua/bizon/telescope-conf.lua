local status_ok, plugin = pcall(require, "telescope")
if not status_ok then
  print("telescope failed")
  return
end

local actions = require("telescope.actions")

plugin.setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    preview_title = false,
    file_ignore_patterns = { ".git" },
  },
  picker = {
    results_title = false,
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
  },
})
plugin.load_extension("fzf")
