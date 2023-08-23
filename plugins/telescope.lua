return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  config = function(plugin, opts)
    local actions = require "telescope.actions"
    local telescope = require "telescope"
    require "plugins.configs.telescope"(plugin, opts)
    telescope.load_extension "live_grep_args"
    telescope.setup {
      file_ignore_pattern = { "node_modules", ".git" },
      extensions = {
        live_grep_args = {
          mappings = {
            i = {
              ["<C-k>"] = require("telescope-live-grep-args.actions").quote_prompt(),
              ["<C-i>"] = require("telescope-live-grep-args.actions").quote_prompt { postfix = " --iglob " },
            },
          },
        },
      },
      mappings = {
        i = {
          ["<esc>"] = actions.close,
          ["<C-Down>"] = actions.cycle_history_next,
          ["<C-Up>"] = actions.cycle_history_prev,
        },
      },
      pickers = {
        find_files = {
          theme = "dropdown",
        },
      },
    }
  end,
}
