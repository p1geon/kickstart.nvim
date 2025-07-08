-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true, -- focus follows the file you're editing
      },
      window = {
        mappings = {
          -- ['\\'] = 'close_window',
          -- ['P'] = 'toggle_preview', -- preview file on the side
          -- ['l'] = 'open', -- open file or expand folder
          -- ['h'] = 'close_node', -- collapse folder
          -- ['<space>'] = 'toggle_node', -- fold/unfold node
        },
      },
      use_libuv_file_watcher = true, -- detects file changes without manual refresh
    },
    default_component_configs = {
      indent = {
        with_expanders = true, -- shows  and  for collapsed/expanded folders
        expander_collapsed = '',
        expander_expanded = '',
      },
      icon = {
        folder_closed = '',
        folder_open = '',
        default = '',
      },
      -- modified = {
      --   symbol = '[+]',
      --   highlight = 'NeoTreeModified',
      -- },
    },
  },
}
