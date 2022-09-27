local M = {}

-- neovim 0.8 compatibility
vim.g.skip_ts_default_groups = true

function M.get(cp)
   return {
      ['@field'] = { fg = cp.teal }, -- For fields.
      ['@property'] = { fg = cp.teal }, -- Same as TSField.

      ['@include'] = { fg = cp.orange_2 }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
      ['@operator'] = { fg = cp.sky }, -- For any operator: +, but also -> and * in cp.
      ['@punctuation.special'] = { fg = cp.sky }, -- For special punctutation that does not fall in the catagories before.

      ['@float'] = { fg = cp.peach }, -- For floats.
      ['@number'] = { fg = cp.peach }, -- For all numbers
      ['@boolean'] = { fg = cp.red_2, bold = true }, -- For booleans.

      ['@constructor'] = { fg = cp.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
      ['@conditional'] = { fg = cp.red }, -- For keywords related to conditionnals.
      ['@repeat'] = { fg = cp.red }, -- For keywords related to loops.
      ['@exception'] = { fg = cp.orange_1 }, -- For exception related keywords.

      -- constants
      ['@constant'] = { fg = cp.red_2 }, -- For constants
      ['@constant.builtin'] = { fg = cp.red_2 }, -- For constant that are built in the language: nil in Lua.
      ['@constant.macro'] = { fg = cp.mauve }, -- For constants that are defined by macros: NULL in cp.

      ['@namespace'] = { fg = cp.blue }, -- For identifiers referring to modules and namespaces.

      ['@type'] = { fg = cp.yellow }, -- For types.
      ['@type.builtin'] = { fg = cp.yellow }, -- For builtin types.

      ['@variable'] = { fg = cp.whiteSmoke }, -- Any variable name that does not have another highlighcp.
      ['@variable.builtin'] = { fg = cp.text }, -- Variable names that are defined by the languages, like this or self.

      -- functions
      ['@function'] = { fg = cp.blue_1, italic = true, bold = true }, -- For function (calls and definitions).
      ['@function.macro'] = { fg = cp.teal }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
      ['@function.builtin'] = { fg = cp.orange_1 }, -- For builtin functions: table.insert in Lua.
      ['@function.call'] = { fg = cp.peach },

      ['@parameter'] = { fg = cp.maroon }, -- For parameters of a function.

      -- keywords
      ['@keyword.function'] = { fg = cp.purple }, -- For keywords used to define a fuction.
      ['@keyword'] = { fg = cp.pink_1 }, -- For keywords that don't fall in previous categories.
      ['@keyword.return'] = { fg = cp.mauve },
      ['@keyword.operator'] = { fg = cp.mauve }, -- For new keyword operator
      -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
      -- TSAttribute         = { };    -- (unstable) TODO: docs
      -- TSCharacter         = { };    -- For characters.
      -- TSoverlay0           = { };    -- For overlay0 blocks.
      ['@text.note'] = { fg = cp.base, bg = cp.blue },
      ['@text.warning'] = { fg = cp.base, bg = cp.yellow },
      ['@text.danger'] = { fg = cp.base, bg = cp.red },
      -- TSError = { fg = cp.red }, -- For syntax/parser errors.
      -- rustTSField = { fg = cp.surface1 }, -- For fields.
      ['@label'] = { fg = cp.sapphire }, -- For labels: label: in C and :label: in Lua.
      ['@method'] = { fg = cp.blue_1 }, -- For method calls and definitions.
      -- TSNone              = { };    -- TODO: docs
      -- TSParameterReference= { };    -- For references to parameters of a function.
      ['@punctuation.delimiter'] = { fg = cp.overlay2 }, -- For delimiters ie: .
      -- TSPunctBracket = { fg = delimeters }, -- For brackets and parenthesis.
      ['@punctuation.bracket'] = { fg = cp.overlay2, bold = true }, -- For brackets and parenthesis.
      ['@string'] = { fg = cp.green }, -- For strings.
      ['@string.regex'] = { fg = cp.teal_2 }, -- For regexes.
      ['@string.escape'] = { fg = cp.blue_1, bold = true }, -- For escape characters within a string.
      -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.

      ['@text'] = { fg = cp.text }, -- For strings considerated text in a markup language.
      -- TSEmphasis          = { };    -- For text to be represented with emphasis.
      -- TSUnderline         = { };    -- For text to be represented with an underline.
      -- TSStrike            = { };    -- For strikethrough texcp.
      -- TSTitle             = { };    -- Text that is part of a title.
      -- TSLiteral           = { };    -- Literal texcp.
      -- TSURI               = { };    -- Any URI like a link or email.

      -- Markdown
      ['@text.reference'] = { fg = cp.pink_1 }, -- references
      ['@text.emphasis'] = { fg = cp.peach, italic = true }, -- bold
      ['@text.strong'] = { fg = cp.peach, bold = true }, -- italic
      ['@text.literal'] = { fg = cp.white }, -- used for inline code in markdown and for doc in python (""")

      -- for html
      ['@tag'] = { fg = cp.red },
      ['@tag.delimiter'] = { fg = cp.red_1 }, -- Tag delimiter like < > /
      ['@tag.attribute'] = { fg = cp.flamingo }, -- atributo de las etiquetas.
      ['@text.title'] = { fg = cp.blue_2, bold = true }, -- titles for h1, h2, ... #1, #2...
      ['@text.uri'] = { fg = cp.blue_3, underline = true }, -- urls, links and emails

      -- from scss and css
      ['@string.scss'] = { fg = cp.text },
      ['@type.scss'] = { fg = cp.red_2 },
      ['@punctuation.delimiter.scss'] = { fg = 'None' },
      ['@function.scss'] = { fg = 'None' },

      ['@type.css'] = { fg = cp.red_2 },
      ['@punctuation.delimiter.css'] = { fg = 'None' },
      ['@function.css'] = { fg = 'None' },

      -- toml
      ['@property.toml'] = { fg = cp.blue }, -- Differentiates between string and properties

      -- json
      ['@label.json'] = { fg = cp.blue_1 }, -- For labels: label: in C and :label: in Lua.
      ['@string.json'] = { fg = cp.text },
      ['@conceal.json'] = { fg = cp.green_1 },
      ['@punctuation.delimiter.json'] = { fg = cp.red_2 }, -- For delimiters ie: .

      -- lua
      ['@constructor.lua'] = { fg = cp.lavender }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

      -- typescript
      ['@constructor.typescript'] = { fg = cp.lavender },

      -- TSX (Typescript React)
      ['@constructor.tsx'] = { fg = cp.lavender },
      ['@tag.attribute.tsx'] = { fg = cp.mauve },

      -- cpp
      -- ["@property.cpp"] = { fg = cp.rosewater },
      ['@property.cpp'] = { fg = '#ff0000' },

      -- yaml
      ['@field.yaml'] = { fg = cp.blue }, -- For fields.
   }
end

return M
