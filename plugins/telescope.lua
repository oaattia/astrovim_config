return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  config = function(plugin, opts)
    require "plugins.configs.telescope"(plugin, opts)
    local telescope = require "telescope"
    telescope.load_extension "live_grep_args"
    telescope.setup {
      pickers = {
        find_files = {
          theme = "dropdown",
        },
      },
    }
  end,
}
