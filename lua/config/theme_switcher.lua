local themes = { "gruvbox", "tokyonight", "catppuccin", "onedark" }
local theme_file = vim.fn.stdpath("config") .. "/lua/config/current_theme.txt"

local function load_current_theme()
  local f = io.open(theme_file, "r")
  if f then
    local theme = f:read("*l")
    f:close()
    if vim.tbl_contains(themes, theme) then
      vim.cmd.colorscheme(theme)
    end
  end
end

local function save_theme(theme)
  local f = io.open(theme_file, "w")
  if f then
    f:write(theme)
    f:close()
  end
end

local function cycle_theme()
  -- Read current
  local current = 1
  local f = io.open(theme_file, "r")
  if f then
    local current_theme = f:read("*l")
    f:close()
    for i, t in ipairs(themes) do
      if t == current_theme then
        current = i
        break
      end
    end
  end

  -- Next
  local next = (current % #themes) + 1
  local new_theme = themes[next]
  vim.cmd.colorscheme(new_theme)
  save_theme(new_theme)
  vim.notify("Theme changed to: " .. new_theme)
end

-- Auto-load theme on startup
load_current_theme()

-- User command to cycle
vim.api.nvim_create_user_command("CycleTheme", cycle_theme, {})
