local M = {}

-- neovim 0.8 compatibility
vim.g.skip_ts_default_groups = true

function M.get(cp)
   -- local delimeters = cp.overlay2
   local operators = cp.sky
   local cl = cp.mauve -- conditionals, loops
   local keywords = cp.mauve

   local math_logic = cp.peach

   if not vim.treesitter.highlighter.hl_map then -- https://github.com/nvim-treesitter/nvim-treesitter/pull/3365
      return {
         ["@field"] = { fg = cp.teal }, -- For fields.
         ["@property"] = { fg = cp.teal }, -- Same as TSField.

         ["@include"] = { fg = cp.mauve }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
         ["@operator"] = { fg = operators }, -- For any operator: +, but also -> and * in cp.
         ["@keyword.operator"] = { fg = cp.mauve }, -- For new keyword operator
         ["@punctuation.special"] = { fg = cp.sky }, -- For special punctutation that does not fall in the catagories before.

         ["@float"] = { fg = math_logic }, -- For floats.
         ["@number"] = { fg = math_logic }, -- For all numbers
         ["@boolean"] = { fg = math_logic }, -- For booleans.

         ["@constructor"] = { fg = cp.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
         ["@constant"] = { fg = cp.peach }, -- For constants
         ["@conditional"] = { fg = cl }, -- For keywords related to conditionnals.
         ["@repeat"] = { fg = cl }, -- For keywords related to loops.
         ["@exception"] = { fg = cp.mauve }, -- For exception related keywords.

         -- builtin
         ["@constant.builtin"] = { fg = cp.peach }, -- For constant that are built in the language: nil in Lua.
         ["@function.builtin"] = { fg = cp.peach }, -- For builtin functions: table.insert in Lua.

         ["@namespace"] = { fg = cp.blue, italic = true }, -- For identifiers referring to modules and namespaces.
         ["@type"] = { fg = cp.yellow }, -- For types.
         ["@type.builtin"] = { fg = cp.yellow }, -- For builtin types.
         ["@variable.builtin"] = { fg = cp.red }, -- Variable names that are defined by the languages, like this or self.

         ["@function"] = { fg = cp.blue }, -- For function (calls and definitions).
         ["@function.macro"] = { fg = cp.teal }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
         ["@parameter"] = { fg = cp.maroon, italic = true }, -- For parameters of a function.
         ["@keyword.function"] = { fg = cp.mauve }, -- For keywords used to define a fuction.
         ["@keyword"] = { fg = keywords }, -- For keywords that don't fall in previous categories.
         ["@keyword.return"] = { fg = cp.mauve },
         -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
         -- TSAttribute         = { };    -- (unstable) TODO: docs
         -- TSCharacter         = { };    -- For characters.
         -- TSoverlay0           = { };    -- For overlay0 blocks.
         ["@text.note"] = { fg = cp.base, bg = cp.blue },
         ["@text.warning"] = { fg = cp.base, bg = cp.yellow },
         ["@text.danger"] = { fg = cp.base, bg = cp.red },
         ["@constant.macro"] = { fg = cp.mauve }, -- For constants that are defined by macros: NULL in cp.
         -- TSError = { fg = cp.red }, -- For syntax/parser errors.
         -- rustTSField = { fg = cp.surface1 }, -- For fields.
         ["@label"] = { fg = cp.sapphire }, -- For labels: label: in C and :label: in Lua.
         ["@method"] = { fg = cp.blue }, -- For method calls and definitions.
         -- TSNone              = { };    -- TODO: docs
         -- TSParameterReference= { };    -- For references to parameters of a function.
         ["@punctuation.delimiter"] = { fg = cp.overlay2 }, -- For delimiters ie: .
         -- TSPunctBracket = { fg = delimeters }, -- For brackets and parenthesis.
         ["@punctuation.bracket"] = { fg = cp.overlay2 }, -- For brackets and parenthesis.
         ["@string"] = { fg = cp.green }, -- For strings.
         ["@string.regex"] = { fg = cp.peach }, -- For regexes.
         -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
         ["@variable"] = { fg = cp.text }, -- Any variable name that does not have another highlighcp.
         ["@tag.attribute"] = { fg = cp.teal, italic = true }, -- Tags like html tag names.
         ["@tag"] = { fg = cp.mauve }, -- Tags like html tag names.
         ["@tag.delimiter"] = { fg = cp.sky }, -- Tag delimiter like < > /
         ["@text"] = { fg = cp.text }, -- For strings considerated text in a markup language.
         -- TSEmphasis          = { };    -- For text to be represented with emphasis.
         -- TSUnderline         = { };    -- For text to be represented with an underline.
         -- TSStrike            = { };    -- For strikethrough texcp.
         -- TSTitle             = { };    -- Text that is part of a title.
         -- TSLiteral           = { };    -- Literal texcp.
         -- TSURI               = { };    -- Any URI like a link or email.
         --
         -- Markdown tresitter parser support
         -- ["@text.uri"] = { fg = cp.rosewater, italic = true, underline = true }, -- urls, links and emails
         -- ["@text.literal"] = { fg = cp.teal, italic = true }, -- used for inline code in markdown and for doc in python (""")
         -- ["@text.reference"] = { fg = cp.lavender, bold = true }, -- references
         -- ["@text.title"] = { fg = cp.blue, bold = true }, -- titles like: # Example
         -- ["@text.emphasis"] = { fg = cp.maroon, italic = true }, -- bold
         -- ["@text.strong"] = { fg = cp.maroon, bold = true }, -- italic
         -- ["@string.escape"] = { fg = cp.pink }, -- For escape characters within a string.

         -- toml
         ["@property.toml"] = { fg = cp.blue }, -- Differentiates between string and properties

         -- json
         ["@label.json"] = { fg = cp.blue }, -- For labels: label: in C and :label: in Lua.

         -- lua
         ["@constructor.lua"] = { fg = cp.lavender }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

         -- typescript
         ["@constructor.typescript"] = { fg = cp.lavender },

         -- TSX (Typescript React)
         ["@constructor.tsx"] = { fg = cp.lavender },
         ["@tag.attribute.tsx"] = { fg = cp.mauve },

         -- cpp
         -- ["@property.cpp"] = { fg = cp.rosewater },
         ["@property.cpp"] = { fg = '#ff0000' },

         -- yaml
         ["@field.yaml"] = { fg = cp.blue }, -- For fields.
      }
   end
end

return M
