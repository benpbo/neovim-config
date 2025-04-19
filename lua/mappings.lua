require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle breakpoint" })
map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Open debugging sidebar" })
map("n", "<leader>lf", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "Floating diagnostic" })
map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "Update all crates" })

map("v", ">", ">gv", { desc = "indent" })

map("n", "<Leader>nf", function()
  require("neogen").generate()
end, { desc = "Generate annotation" })
