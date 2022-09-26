local M = {}

function M.get(cp)
   return {
      NvimTreeRootFolder = { fg = cp.red_2, bg = cp.whiteSmoke, bold = true },

      NvimTreeFolderName = { fg = cp.folder },
      NvimTreeFolderIcon = { fg = cp.folder },
      NvimTreeNormal = { fg = cp.whiteSmoke },
      NvimTreeOpenedFolderName = { fg = cp.folder },
      NvimTreeEmptyFolderName = { fg = cp.text },
      NvimTreeIndentMarker = { fg = cp.overlay0 },
      NvimTreeSymlink = { fg = cp.pink_1 },
      NvimTreeStatuslineNc = { fg = cp.mantle, bg = cp.mantle }, -- Status line for NvimTree

      NvimTreeGitDirty = { fg = cp.yellow },
      NvimTreeGitNew = { fg = cp.blue },
      NvimTreeGitDeleted = { fg = cp.red },

      NvimTreeSpecialFile = { fg = cp.teal_2 },
      NvimTreeImageFile = { fg = cp.text },
      NvimTreeOpenedFile = { fg = cp.blue_1 },

      -- NvimTreeCursorLine = { fg = cp.dark, bg = cp.teal }
      NvimTreeCursorLine = { bg = cp.surface0 },
      NvimTreeWinSeparator = { fg = cp.blue_2 },
   }
end

return M
