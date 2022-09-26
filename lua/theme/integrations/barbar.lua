local M = {}

function M.get(cp)
   return {
      BufferCurrent = { bg = cp.surface1, fg = cp.text },
      BufferCurrentIndex = { bg = cp.surface1, fg = cp.blue_1 },
      BufferCurrentMod = { bg = cp.surface1, fg = cp.yellow },
      BufferCurrentSign = { bg = cp.mantle, fg = cp.blue_1 },
      BufferCurrentTarget = { bg = cp.surface1, fg = cp.red },

      BufferVisible = { bg = cp.mantle, fg = cp.text },
      BufferVisibleIndex = { bg = cp.mantle, fg = cp.blue_1 },
      BufferVisibleMod = { bg = cp.mantle, fg = cp.yellow },
      BufferVisibleSign = { bg = cp.mantle, fg = cp.blue_1 },
      BufferVisibleTarget = { bg = cp.mantle, fg = cp.red },

      BufferInactive = { bg = cp.mantle, fg = cp.overlay0 },
      BufferInactiveIndex = { bg = cp.mantle, fg = cp.overlay0 },
      BufferInactiveMod = { bg = cp.mantle, fg = cp.yellow },
      BufferInactiveSign = { bg = cp.mantle, fg = cp.blue_1 },
      BufferInactiveTarget = { bg = cp.mantle, fg = cp.red },

      BufferTabpages = { bg = cp.mantle, fg = cp.none },
      BufferTabpage = { bg = cp.mantle, fg = cp.blue_1 },
   }
end

return M
