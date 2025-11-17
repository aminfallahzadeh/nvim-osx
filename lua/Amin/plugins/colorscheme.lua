return {
	-- Lu
	-- -- {
	-- 	"shaunsingh/nord.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	-- optionally set the colorscheme within lazy config
	-- 	init = function()
	-- 		vim.cmd("colorscheme nord")
	-- 	end,
	-- },
	{
		"gbprod/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nord").setup({
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = true },
					keywords = { italic = true },
					functions = { italic = true },
					variables = {},
					booleans = { italic = true },

					-- To customize lualine/bufferline
					bufferline = {
						current = {},
						modified = { italic = true },
					},
				},
				on_highlights = function(highlights, _)
					highlights.WinSeparator = { fg = "#506477" }
					highlights.CursorLineNr = { fg = "#88c0d0" }
					highlights.FloatBorder = { fg = "#88c0d0" }
					highlights.TelescopeBorder = { fg = "#88c0d0" }
					highlights.DiagnosticUnnecessary = {}
					highlights.DiagnosticVirtualTextError = { bg = "#2e3441", fg = "#bf616a", italic = true }
					highlights.DiagnosticVirtualTextHint = { bg = "#2e3441", fg = "#81a0c1", italic = true }
					highlights.DiagnosticVirtualTextInfo = { bg = "#2e3441", fg = "#81a0c1", italic = true }
					highlights.DiagnosticVirtualTextWarn = { bg = "#2e3441", fg = "#ebcb8a", italic = true }

					-- blink.cmp
					highlights.BlinkCmpMenu = { bg = "#2e3441" }
					highlights.BlinkCmpMenuBorder = { fg = "#88c0d0" }
					highlights.BlinkCmpSource = { bg = "#2e3441" }
					highlights.BlinkCmpDocBorder = { fg = "#88c0d0" }
					highlights.BlinkCmpDocSeparator = { fg = "#ffffff" }
					-- 				DiagnosticVirtualTextError = { bg = "#191724" },
					-- 				DiagnosticVirtualTextHint = { bg = "#191724" },
					-- 				DiagnosticVirtualTextInfo = { bg = "#191724" },
					-- 				DiagnosticVirtualTextWarn = { bg = "#191724" },
				end,
			})

			vim.cmd.colorscheme("nord")
		end,
	},
	{
		"zenbones-theme/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		-- you can set set configuration options here

		config = function()
			vim.g.zenbones_darken_comments = 45
			-- vim.cmd.colorscheme("kanagawabones")
		end,
	},
	-- {
	-- 	"olivercederborg/poimandres.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("poimandres").setup({
	-- 			-- leave this setup function empty for default config
	-- 			-- or refer to the configuration section
	-- 			-- for configuration options
	-- 			-- disable_background = true
	-- 			--       bold_vert_split = false, -- use bold vertical separators
	-- 			-- dim_nc_background = false, -- dim 'non-current' window backgrounds
	-- 			-- disable_background = true, -- disable background
	-- 			-- disable_float_background = true, -- disable background for floats
	-- 			-- disable_italics = false, -- disable italics
	-- 			enable = {
	-- 				legacy_highlights = true,
	-- 			},
	-- 			styles = {
	-- 				bold = true,
	-- 				italic = true,
	-- 				transparency = false,
	-- 			},
	-- 			highlight_groups = {
	-- 				telescoperesultstitle = { fg = "surface", bg = "surface" },
	-- 				telescopeborder = { fg = "surface", bg = "surface" },
	-- 				-- telescopeselection = { fg = "text", bg = "overlay", bold = true },
	-- 				-- telescopeselectioncaret = { fg = "text", bg = "highlight_med" },
	-- 				-- telescopemultiselection = { fg = "text", bg = "highlight_high" },
	-- 				telescopetitle = { fg = "base", bg = "love" },
	-- 				-- telescopeprompttitle = { fg = "base", bg = "love" },
	-- 				-- telescopepreviewtitle = { fg = "base", bg = "foam" },
	-- 				telescopepromptnormal = { bg = "overlay" },
	-- 				telescopepromptborder = { fg = "overlay", bg = "overlay" },
	-- 				-- telescopepromptprefix = { fg = "love", bg = "overlay" },
	-- 				-- cmpwinborder = { fg = "overlay", bg = "base" },
	-- 				-- diagnosticvirtualtexterror = { bg = "#191724" },
	-- 				-- diagnosticvirtualtexthint = { bg = "#191724" },
	-- 				-- diagnosticvirtualtextinfo = { bg = "#191724" },
	-- 				-- diagnosticvirtualtextwarn = { bg = "#191724" },
	-- 				winseparator = { fg = "#506477" },
	-- 				cursorlinenr = { fg = "#89ddff" },
	-- 				floatborder = { fg = "#506477" },
	-- 			},
	-- 		})
	-- 	end,
	--
	-- -- 	optionally set the colorscheme within lazy config
	-- 	init = function()
	-- 		vim.cmd("colorscheme poimandres")
	-- 	end,
	-- },
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			enable = {
	-- 				legacy_highlights = true,
	-- 			},
	-- 			styles = {
	-- 				bold = true,
	-- 				italic = true,
	-- 				transparency = false,
	-- 			},
	-- 			highlight_groups = {
	-- 				TelescopeResultsTitle = { fg = "surface", bg = "surface" },
	-- 				TelescopeBorder = { fg = "surface", bg = "surface" },
	-- 				TelescopeSelection = { fg = "text", bg = "overlay", bold = true },
	-- 				TelescopeSelectionCaret = { fg = "text", bg = "highlight_med" },
	-- 				TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },
	-- 				TelescopeTitle = { fg = "base", bg = "love" },
	-- 				TelescopePromptTitle = { fg = "base", bg = "love" },
	-- 				TelescopePreviewTitle = { fg = "base", bg = "foam" },
	-- 				TelescopePromptNormal = { bg = "overlay" },
	-- 				TelescopePromptBorder = { fg = "overlay", bg = "overlay" },
	-- 				TelescopePromptPrefix = { fg = "love", bg = "overlay" },
	-- 				CmpWinBorder = { fg = "overlay", bg = "base" },
	-- 				DiagnosticVirtualTextError = { bg = "#191724" },
	-- 				DiagnosticVirtualTextHint = { bg = "#191724" },
	-- 				DiagnosticVirtualTextInfo = { bg = "#191724" },
	-- 				DiagnosticVirtualTextWarn = { bg = "#191724" },
	-- 				WinSeparator = { fg = "#000000" },
	-- 				CursorLineNr = { fg = "#ebbcba" },
	-- 			},
	-- 		})
	-- 		-- vim.cmd("colorscheme rose-pine")
	-- 	end,
	-- },
}
