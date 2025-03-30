
function ColorMyPencils(color)
    color = color or "cyberdream"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "Function", { fg = "#ffff00"}) -- Yellow
    vim.api.nvim_set_hl(0, "@variable.member", { fg = "#ff1e00"}) -- Orange Red
    vim.api.nvim_set_hl(0, "Type", { fg = "#00f7ff"}) -- Tortoise
    vim.api.nvim_set_hl(0, "@variable", { fg = "#00ff80", bold = true })
    --vim.api.nvim_set_hl(0, "@property", { fg = "#298FD8", bold = true })
    --vim.api.nvim_set_hl(0, "Typedef", { fg = "#B28500", italic = true })
    --vim.api.nvim_set_hl(0, "Struct", { fg = "#B28500", italic = true })
    --vim.api.nvim_set_hl(0, "Structure", { fg = "#B28500", italic = true })
    --vim.api.nvim_set_hl(0, "@property", { fg = "#298FD8", bold = true })
    --vim.api.nvim_set_hl(0, "Identifier", { fg = "#298FD8", bold = true })
end
ColorMyPencils()

--[[
function ColorMyPencils(color)
    color = color or "solarized-osaka"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "Function", { fg = "#B28500", italic = true }) -- Orange and italic
    vim.api.nvim_set_hl(0, "@variable.member", { fg = "#C56D77", bold = true }) -- Magenta
    --vim.api.nvim_set_hl(0, "@variable", { fg = "#298FD8", bold = true }) -- Magenta
end
ColorMyPencils()
]]

--[[
function ColorMyPencils(color)
-- vim.cmd("colorscheme solarized")

	color = color or "solarized"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
end
ColorMyPencils()
]]

--[[
function ColorMyPencils(color)
-- vim.cmd("colorscheme rose-pine")
-- vim.cmd("colorscheme rose-pine-main")
-- vim.cmd("colorscheme rose-oine-moon")
-- vim.cmd("colorscheme rose-pine-dawn")

	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
end
ColorMyPencils()
]]
