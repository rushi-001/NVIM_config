return {
 {
  "folke/snacks.nvim",
  opts = {
   picker = {
    hidden = true,
    ignored = true,
    sources = {
     files = {
      hidden = false, -- Show hidden/dotfiles
      ignored = false, -- Respect .gitignore
     },
    },
   },
  },
 },
}
