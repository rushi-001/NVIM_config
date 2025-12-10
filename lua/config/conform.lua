config = function()
 local conform = require("conform")

 conform.setup({
  formatters_by_ft = {
   css = { "prettier" },
   scss = { "prettier" },
   html = { "prettier" },
   javascript = { "prettier" },
   javascriptreact = { "prettier" },
   typescript = { "prettier" },
   typescriptreact = { "prettier" },
   json = { "prettier" },
   python = { "prettier" },
  },

  -- Auto format on save
  format_on_save = function(bufnr)
   local ignore = { "markdown" } -- add filetypes you DON'T want auto-formatted
   if vim.tbl_contains(ignore, vim.bo[bufnr].filetype) then
    return
   end

   return {
    timeout_ms = 500,
    lsp_fallback = true,
   }
  end,
 })
end
