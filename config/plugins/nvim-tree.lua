local g = vim.g

vim.o.termguicolors = true

require('nvim-tree').setup({
   diagnostics = {
      enable = false,
      icons = {
         hint = "",
         info = "",
         warning = "",
         error = "",
      },
   },
   filters = {
      dotfiles = false,
   },
   disable_netrw = true,
   hijack_netrw = true,
   ignore_ft_on_setup = { ".git", "node_modules", ".cache" },
   open_on_tab = false,
   hijack_cursor = true,
   update_cwd = true,
   update_focused_file = {
      enable = true,
      update_cwd = false,
   },
   view = {
      side = "left",
      width = 30,
   },
   renderer = {
      add_trailing = false,
      highlight_opened_files = "none",
      indent_markers = {
         enable = true
      },
      root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" },
      icons = {
         show = {
            folder = true,
            folder_arrow = true,
            file = true,
            git = true,
         },
         glyphs = {
            default = "",
            symlink = "",
            git = {
               deleted = "",
               ignored = "◌",
               renamed = "➜",
               staged = "✓",
               unmerged = "",
               unstaged = "✗",
               untracked = "★",
            },
            folder = {
               -- disable indent_markers option to get arrows working or if you want both arrows and indent then just add the arrow icons in front            ofthe default and opened folders below!
               -- arrow_open = "",
               -- arrow_closed = "",
               default = "",
               empty = "", -- 
               empty_open = "",
               open = "",
               symlink = "",
               symlink_open = "",
            },
         },
      },
   },
   actions = {
      open_file = {
         quit_on_open = false
      },
   },
})
