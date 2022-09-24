local M = {}

function M.get(cp)
   local error = cp.red
   local warning = cp.yellow
   local info = cp.sky
   local hint = cp.teal

   return {
      LspReferenceText = { bg = cp.surface1 }, -- used for highlighting "text" references
      LspReferenceRead = { bg = cp.surface1 }, -- used for highlighting "read" references
      LspReferenceWrite = { bg = cp.surface1 }, -- used for highlighting "write" references

      DiagnosticVirtualTextError = { bg = 'None', fg = error },
      DiagnosticVirtualTextWarn = { bg = 'None', fg = warning },
      DiagnosticVirtualTextInfo = { bg = 'None', fg = info },
      DiagnosticVirtualTextHint = { bg = 'None', fg = hint },

      DiagnosticError = { bg = 'None', fg = error }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
      DiagnosticWarn = { bg = 'None', fg = warning }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
      DiagnosticInfo = { bg = 'None', fg = info }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
      DiagnosticHint = { bg = 'None', fg = hint }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

      -- for nvim nightly
      DiagnosticUnderlineError = { sp = error, underline = true },
      DiagnosticUnderlineWarn = { sp = warning, underline = true },
      DiagnosticUnderlineInfo = { sp = info, underline = true },
      DiagnosticUnderlineHint = { sp = hint, underline = true },

      LspDiagnosticsDefaultError = { fg = error }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
      LspDiagnosticsDefaultWarning = { fg = warning }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
      LspDiagnosticsDefaultInformation = { fg = info }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
      LspDiagnosticsDefaultHint = { fg = hint }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
      LspSignatureActiveParameter = { fg = cp.peach },
      -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
      -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
      -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
      -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

      LspDiagnosticsError = { fg = error },
      LspDiagnosticsWarning = { fg = warning },
      LspDiagnosticsInformation = { fg = info },
      LspDiagnosticsHint = { fg = hint },
      LspDiagnosticsVirtualTextError = { fg = error }, -- Used for "Error" diagnostic virtual text
      LspDiagnosticsVirtualTextWarning = { fg = warning }, -- Used for "Warning" diagnostic virtual text
      LspDiagnosticsVirtualTextInformation = { fg = info }, -- Used for "Information" diagnostic virtual text
      LspDiagnosticsVirtualTextHint = { fg = hint }, -- Used for "Hint" diagnostic virtual text
      LspDiagnosticsUnderlineError = { sp = error }, -- Used to underline "Error" diagnostics
      LspDiagnosticsUnderlineWarning = { sp = warning }, -- Used to underline "Warning" diagnostics
      LspDiagnosticsUnderlineInformation = { sp = info }, -- Used to underline "Information" diagnostics
      LspDiagnosticsUnderlineHint = { sp = hint }, -- Used to underline "Hint" diagnostics
      LspCodeLens = { fg = cp.overlay0 }, -- virtual text of the codelens
   }
end

return M
