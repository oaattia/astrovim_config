-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<leader>,"] = {":e $HOME/.config/nvim/lua/user/init.lua<CR>"},
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
    ["<CR>"] = {"ciw", desc = " Map enter to ciw in normal mode"},
    ["dw"] = {'vb"_d', desc="Delete word backword"}
  },
  i = {
    [";;"] = {"<Esc>A;<Esc>"}
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  }
}
