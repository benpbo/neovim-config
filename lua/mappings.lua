require "nvchad.mappings"
---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar",
    },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.crates = {
  n = {
    ['<leader>rcu'] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      'Update all crates',
    }
  }
}

-- more keybinds!

return M
