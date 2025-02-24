--[[
vim.o.termguicolors = true
vim.o.background = "dark" -- light | dark

-- default config
require('solarized').setup({
  transparent = {
    enabled = true,
    pmenu = true,
    normal = true,
    normalfloat = true,
    neotree = true,
    nvimtree = true,
    whichkey = true,
    telescope = true,
    lazy = true,
    mason = true,
  },


  -- Use :Solarized colors to see available colors. 
  -- on_highlights = nil,
  on_highlights = function (colors, color) -- nil | function
      local darken = color.darken
      local lighten = color.lighten
      local blend = color.blend
      local shade = color.shade
      local tint = color.tint

      ---@type solarized.highlights
      local groups = {
          Visual = { bg = colors.base02, standout = true },
          Function = { fg = colors.yellow },
          IncSearch = { fg = colors.orange, bg = colors.mix_orange },
          Search = { fg = colors.violet, bg = shade(colors.violet, 5) },
          NormalFloat = { bg = darken(colors.base03, 25) }
      }

      return groups
  end,
      

  -- on_colors = nil,
  on_colors = function(colors, color) -- nil | function
      local lighten = color.tint
      local darken = color.darken

      return {
          fg = lighten(colors.base00, 2),
          bg = darken(colors.base03, 30)
      }
  end,
  highlights = function(colors)
      return {
          Normal = { fg = colors.fg, bg = colors.bg }
      }
  end,

  palette = 'solarized', -- solarized (default) | selenized
  variant = 'summer', -- "spring" | "summer" | "autumn" | "winter" (default)
  error_lens = {
    text = false,
    symbol = false,
  },
  styles = {
      enabled = true,
      comments = { italic = true, bold = false },
      functions = { italic = false },
      variables = { italic = false },
      types = {},
      parameters = {},
      strings = {},
      keywords = {},
      constants = {},
  },
  plugins = {
    treesitter = true,
    lspconfig = true,
    navic = true,
    cmp = true,
    indentblankline = true,
    neotree = true,
    nvimtree = true,
    whichkey = true,
    dashboard = true,
    gitsigns = true,
    telescope = true,
    noice = true,
    hop = true,
    ministatusline = true,
    minitabline = true,
    ministarter = true,
    minicursorword = true,
    notify = true,
    rainbowdelimiters = true,
    bufferline = true,
    lazy = true,
    rendermarkdown = true,
    ale = true,
    coc = true,
    leap = true,
    alpha = true,
    yanky = true,
    gitgutter = true,
    mason = true,
    flash = true,
  },
})
]]
