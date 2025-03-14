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
end
ColorMyPencils()

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
-- vim.cmd("colorscheme rose-pine-moon")
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
