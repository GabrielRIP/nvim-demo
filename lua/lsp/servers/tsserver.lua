local M = {}

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_nvim_lsp_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if cmp_nvim_lsp_ok then
   capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
   capabilities.textDocument.completion.completionItem.snippetSupport = true
   capabilities.textDocument.completion.completionItem.preselectSupport = true
   capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
   capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
   capabilities.textDocument.completion.completionItem.deprecatedSupport = true
   capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
   capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
   capabilities.textDocument.completion.completionItem.resolveSupport = {
      properties = {
         'documentation',
         'detail',
         'additionalTextEdits',
      },
   }
   capabilities.textDocument.codeAction = {
      dynamicRegistration = false,
      codeActionLiteralSupport = {
         codeActionKind = {
            valueSet = {
               '',
               'quickfix',
               'refactor',
               'refactor.extract',
               'refactor.inline',
               'refactor.rewrite',
               'source',
               'source.organizeImports',
            },
         },
      },
   }
   capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
   }
end

local on_attach = function(client, bufnr)
   if client.server_capabilities.documentHighlightProvider then
      vim.api.nvim_create_augroup('lsp_document_highlight', { clear = true })
      vim.api.nvim_clear_autocmds({ buffer = bufnr, group = 'lsp_document_highlight' })
      vim.api.nvim_create_autocmd('CursorHold', {
         callback = vim.lsp.buf.document_highlight,
         buffer = bufnr,
         group = 'lsp_document_highlight',
         desc = 'Document Highlight',
      })
      vim.api.nvim_create_autocmd('CursorMoved', {
         callback = vim.lsp.buf.clear_references,
         buffer = bufnr,
         group = 'lsp_document_highlight',
         desc = 'Clear All the References',
      })
   end
   -- Modifying a server's capabilities is not recommended and is no longer
   -- necessary thanks to the `vim.lsp.buf.format` API introduced in Neovim
   -- 0.8. Users with Neovim 0.7 needs to uncomment below lines to make tsserver formatting work (or keep using eslint).

   -- client.server_capabilities.documentFormattingProvider = false
   -- client.server_capabilities.documentRangeFormattingProvider = false

   local function buf_set_option(...)
      vim.api.nvim_buf_set_option(bufnr, ...)
   end

   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local handlers = {
   ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' }),
   ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded' }),
   ['textDocument/publishDiagnostics'] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      { virtual_text = 'true' }
   ),
   ['textDocument/definition'] = function(_, result, params)
      local util = require('vim.lsp.util')
      if result == nil or vim.tbl_isempty(result) then
         -- return vim.lsp.log.info() and vim.lsp.log.info(params.method, "No location found")
         return nil
      end

      if vim.tbl_islist(result) then
         -- this is opens a buffer to that result
         -- you could loop the result and choose what you want
         util.jump_to_location(result[1])

         if #result > 1 then
            local isReactDTs = false
            ---@diagnostic disable-next-line: unused-local
            for key, value in pairs(result) do
               if string.match(value.uri, 'react/index.d.ts') then
                  isReactDTs = true
                  break
               end
            end
            if not isReactDTs then
               -- this sets the value for the quickfix list
               util.set_qflist(util.locations_to_items(result))
               -- this opens the quickfix window
               vim.api.nvim_command('copen')
               vim.api.nvim_command('wincmd p')
            end
         end
      else
         util.jump_to_location(result)
      end
   end,
}

M.capabilities = capabilities
M.on_attach = on_attach
M.handlers = handlers

return M
