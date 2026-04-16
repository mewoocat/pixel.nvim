-- Telescope support for Pixel colorscheme
-- This module provides Telescope-related highlight groups
-- Hightlight groups reference: https://github.com/nvim-telescope/telescope.nvim/blob/master/plugin/telescope.lua

-- Import shared utility functions
local utils = require("pixel.utils")
local hi = utils.hi

local M = {}

function M.setup(colors)
  -- Telescope general
  hi("TelescopeSelection", { ctermfg = colors.black, ctermbg = colors.br_yellow })
  hi("TelescopeSelectionCaret", { ctermfg = colors.black, ctermbg = colors.br_blue })
  hi("TelescopeMultiSelection", { ctermfg = colors.black, ctermbg = colors.br_green })
  hi("TelescopeNormal", { ctermfg = colors.white, ctermbg = colors.black })
  hi("TelescopeBorder", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("TelescopeMatching", { ctermfg = colors.br_green, cterm = "bold" })

  -- Telescope prompt
  hi("TelescopePromptNormal", { ctermfg = colors.white, ctermbg = colors.black })
  hi("TelescopePromptBorder", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("TelescopePromptTitle", { ctermfg = colors.blue, cterm = "bold" })
  hi("TelescopePromptPrefix", { ctermfg = colors.white })

  -- Telescope preview
  hi("TelescopePreviewNormal", { ctermfg = colors.white, ctermbg = colors.black })
  hi("TelescopePreviewBorder", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("TelescopePreviewTitle", { ctermfg = colors.br_blue, cterm = "bold" })
  hi("TelescopePreviewLine", { ctermbg = colors.br_yellow })
  hi("TelescopePreviewMatch", { ctermfg = colors.black, ctermbg = colors.br_yellow })

  -- Telescope results
  hi("TelescopeResultsNormal", { ctermfg = colors.white, ctermbg = colors.black })
  hi("TelescopeResultsBorder", { ctermfg = colors.br_black, ctermbg = colors.black })
  hi("TelescopeResultsTitle", { ctermfg = colors.red, cterm = "bold" })

  -- Telescope file browser essentials
  hi("TelescopeResultsDirectory", { ctermfg = colors.br_blue, cterm = "bold" })

  -- Telescope git (if using git features)
  hi("TelescopeResultsGitStatus", { ctermfg = colors.yellow })
  hi("TelescopeResultsGitBranch", { ctermfg = colors.green })
end

return M
