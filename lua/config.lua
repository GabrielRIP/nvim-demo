local icons = require('iconos')
local colors = require('theme.colors')

_G.User = {
   NvimTree = {
      windows_float = true,
      width = 32,
      height = 25,
      position = 'left', -- left and right
   },
   plugins = {
      completion = {
         select_first_on_enter = false
      },
      rooter = {
         -- Removing package.json from list in Monorepo Frontend Project can be helpful
         -- By that your live_grep will work related to whole project, not specific package
         patterns = { '.git', 'package.json', '_darcs', '.bzr', '.svn', 'Makefile' } -- Default
      },
   },
   icons = icons,
   colors = colors,
   lsp = {
      virtual_text = true, -- show virtual text (errors, warnings, info) inline messages
   },
}
