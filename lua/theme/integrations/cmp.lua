local M = {}

function M.get(cp)
   return {
      CmpItemAbbr = { fg = cp.overlay2 },
      CmpItemAbbrDeprecated = { fg = cp.overlay0, strikethrough = true },
      CmpItemKind = { fg = cp.blue },
      CmpItemMenu = { fg = cp.text },
      CmpItemAbbrMatch = { fg = cp.blue_2, bold = true },
      CmpItemAbbrMatchFuzzy = { fg = cp.blue_2, bold = true },

      -- kind support
      CmpItemKindSnippet = { fg = cp.pink_2 },
      CmpItemKindKeyword = { fg = cp.red },
      CmpItemKindText = { fg = cp.teal },
      CmpItemKindMethod = { fg = cp.blue },
      CmpItemKindConstructor = { fg = cp.blue },
      CmpItemKindFunction = { fg = cp.orange_2 },
      CmpItemKindFolder = { fg = cp.blue },
      CmpItemKindModule = { fg = cp.blue },
      CmpItemKindConstant = { fg = cp.peach },
      CmpItemKindField = { fg = cp.green },
      CmpItemKindProperty = { fg = cp.green },
      CmpItemKindEnum = { fg = cp.green },
      CmpItemKindUnit = { fg = cp.green },
      CmpItemKindClass = { fg = cp.yellow },
      CmpItemKindVariable = { fg = cp.flamingo },
      CmpItemKindFile = { fg = cp.blue },
      CmpItemKindInterface = { fg = cp.yellow },
      CmpItemKindColor = { fg = cp.red },
      CmpItemKindReference = { fg = cp.red },
      CmpItemKindEnumMember = { fg = cp.red },
      CmpItemKindStruct = { fg = cp.blue },
      CmpItemKindValue = { fg = cp.peach },
      CmpItemKindEvent = { fg = cp.blue },
      CmpItemKindOperator = { fg = cp.blue },
      CmpItemKindTypeParameter = { fg = cp.blue },
      CmpItemKindCopilot = { fg = cp.teal },
   }
end

return M
