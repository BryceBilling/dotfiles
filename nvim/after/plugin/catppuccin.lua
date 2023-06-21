local BaseColor = {}

BaseColor.gruvbox = {
	dark0_hard = "#1d2021",
	dark0 = "#282828",
	dark0_soft = "#32302f",
	dark1 = "#3c3836",
	dark2 = "#504945",
	dark3 = "#665c54",
	dark4 = "#7c6f64",
	light0_hard = "#f9f5d7",
	light0 = "#fbf1c7",
	light0_soft = "#f2e5bc",
	light1 = "#ebdbb2",
	light2 = "#d5c4a1",
	light3 = "#bdae93",
	light4 = "#a89984",
	bright_red = "#fb4934",
	bright_green = "#b8bb26",
	bright_yellow = "#fabd2f",
	bright_blue = "#83a598",
	bright_purple = "#d3869b",
	bright_aqua = "#8ec07c",
	bright_orange = "#fe8019",
	-- common
	neutral_red = "#cc241d",
	neutral_green = "#98971a",
	neutral_yellow = "#d79921",
	neutral_blue = "#458588",
	neutral_purple = "#b16286",
	neutral_aqua = "#689d6a",
	neutral_orange = "#d65d0e",
	-- light theme
	faded_red = "#9d0006",
	faded_green = "#79740e",
	faded_yellow = "#b57614",
	faded_blue = "#076678",
	faded_purple = "#8f3f71",
	faded_aqua = "#427b58",
	faded_orange = "#af3a03",

	gray = "#928374",
}
BaseColor.base_30 = {
	white = "#c7b89d",
	darker_black = "#1a1d1e",
	black = "#1e2122", --  nvim bg
	black2 = "#242728",
	one_bg = "#282b2c",
	one_bg2 = "#393c3d",
	one_bg3 = "#404344",
	grey = "#484b4c",
	grey_fg = "#575a5b",
	grey_fg2 = "#545758",
	light_grey = "#606364",
	red = "#ec6b64",
	baby_pink = "#ce8196",
	pink = "#ff75a0",
	line = "#323536", -- for lines like vertsplit
	green = "#89b482",
	vibrant_green = "#a9b665",
	nord_blue = "#6f8faf",
	blue = "#6d8dad",
	yellow = "#d6b676",
	sun = "#d1b171",
	purple = "#9385b4",
	dark_purple = "#887aa9",
	teal = "#749689",
	orange = "#e78a4e",
	cyan = "#82b3a8",
	statusline_bg = "#222526",
	lightbg = "#2d3031",
	pmenu_bg = "#89b482",
	folder_bg = "#6d8dad",
}

BaseColor.base_16 = {
	base00 = "#1e2122",
	base01 = "#2c2f30",
	base02 = "#36393a",
	base03 = "#404344",
	base04 = "#d4be98",
	base05 = "#c0b196",
	base06 = "#c3b499",
	base07 = "#c7b89d",
	base08 = "#ec6b64",
	base09 = "#e78a4e",
	base0A = "#e0c080",
	base0B = "#a9b665",
	base0C = "#86b17f",
	base0D = "#7daea3",
	base0E = "#d3869b",
	base0F = "#d65d0e",
}
require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "mocha",
		dark = "mocha",
	},
	transparent_background = false, -- disables setting the background color.
	show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
	term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
	dim_inactive = {
		enabled = false, -- dims the background color of inactive window
		shade = "dark",
		percentage = 0.15, -- percentage of the shade to apply to the inactive window
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	no_underline = false, -- Force no underline
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},

	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		notify = true,
		mini = true,
		noice = true,
		harpoon = true,
		mason = true,
		which_key = true,
		lsp_trouble = true,
		treesitter = true,
		illuminate = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
	},
	color_overrides = {
		mocha = {
			rosewater = "#ffc6be", -- #ffc6be  #EA6962  #F5E0DC
			flamingo = "#fb4934", -- #fb4934  #F38BA8  #F2CDCD
			pink = "#ff75a0", --#f4bce4 #ffd3e2  #ff75a0  #F5C2E7
			mauve = "#d3869b", --          #D3869B" #CBA6F7
			red = "#ec6b64", -- #f2594b  #EA6962  #F38BA8
			maroon = "#fe8019", -- #e78a4e  #fe8019  #EA6962  #EBA0AC
			peach = "#FAB387", -- #b57614  #c68e6b  #FAB387
			yellow = "#d79921", -- #e9b143 #e0c080 #D8A657  #F9E2AF
			green = "#a9b665", -- #a9b665           #A6E3A1
			teal = "#8ec07c", --                   #94E2D5
			sky = "#7daea3", --          #89B482  #89DCEB
			sapphire = "#689d6a", -- #82b3a8  #8ec07c  #74C7EC
			blue = "#6d8dad", --          #7DAEA3  #87B0F9
			lavender = "#b16286", -- #b39ddb           #B4BEFE
			text = BaseColor.gruvbox.light1, -- #ebdbb2  #D4BE98  #C6D0F5
			subtext1 = BaseColor.gruvbox.light0_soft, -- #f2e5bc  #BDAE8B  #B3BCDF
			subtext0 = BaseColor.gruvbox.light2, -- #d5c4a1  #A69372  #A1A8C9
			overlay2 = BaseColor.gruvbox.light3, -- #bdae93  #8C7A58  #8E95B3
			overlay1 = BaseColor.gruvbox.light4, -- #a89984  #735F3F  #7B819D
			overlay0 = BaseColor.gruvbox.gray, -- #928374  #806234  #696D86
			surface2 = BaseColor.gruvbox.dark3, -- #6E7477  #4B4F51  #565970
			surface1 = BaseColor.gruvbox.dark1, -- #2A2D2E           #43465A
			surface0 = BaseColor.gruvbox.dark0_soft, -- #232728           #313244
			base = "#1E1E2E",
			mantle = "#181825",
			crust = "#11111B",
		},
	},
	custom_highlights = function(colors)
		return {
			NormalFloat = { bg = colors.surface0 },
			FloatBorder = { fg = colors.overlay0 },
			VertSplit = { bg = colors.base, fg = colors.surface1 },
			FoldColumn = { fg = colors.overlay0, bg = colors.mantle },
			LineNr = { fg = colors.overlay0, bg = colors.mantle },
			CursorLineNr = { fg = colors.mauve, bg = colors.surface0, style = {} },
			CursorLineSign = { bg = colors.surface0 },
			CursorLineFold = { bg = colors.surface0 },
			-- SignColumn = { bg = colors.mantle },
			Pmenu = { bg = colors.mantle, fg = "" },
			PmenuSel = { bg = colors.surface0, fg = colors.subtext0 },
			TelescopeSelection = { bg = colors.surface0 },
			TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
			TelescopePromptPrefix = { bg = colors.surface0 },
			TelescopePromptNormal = { bg = colors.surface0 },
			TelescopeResultsNormal = { bg = colors.mantle },
			TelescopePreviewNormal = { bg = colors.crust },
			TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
			TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
			TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
			TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
			TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
			TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
			-- IndentBlanklineChar = { fg = colors.surface0 },
			-- IndentBlanklineContextChar = { fg = colors.surface2 },
			GitSignsChange = { fg = colors.peach },
			-- Blamer = { fg = colors.overlay1, bg = colors.base },
			-- NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
			-- NvimTreeExecFile = { fg = colors.text },
			Function = { fg = colors.sky, style = { "bold", "italic" } },
			Type = { fg = colors.blue },
			Structure = { fg = colors.teal },
			Comment = { fg = colors.surface2 },
			cTypedef = { fg = colors.pink, style = { "italic" } },
			cDefine = { fg = colors.pink, style = { "italic" } },
			cStructure = { fg = colors.yellow },
			StorageClass = { fg = colors.pink, style = { "italic" } },
			cStorageclass = { fg = colors.pink, style = { "italic" } },
			PreProc = { fg = colors.maroon, style = { "italic" } },
			Keyword = { fg = colors.flamingo },
			Conditional = { fg = colors.red },
			Repeat = { fg = colors.red },
			["@keyword.return"] = { fg = colors.flamingo, style = { "italic" } },
			["@parameter"] = { fg = colors.overlay1, style = { "italic" } },
			["@property"] = { fg = colors.yellow },
			WinBar = { fg = colors.overlay2, bg = colors.mantle },
			-- TabLineSel = { bg = colors.pink },
			-- CmpBorder = { fg = colors.surface2 },
			--  Pmenu = { bg = C.none },
		}
	end,
	highlight_overrides = {
		all = function(colors)
			return {
				-- Comment = { fg = colors.flamingo },
				-- NvimTreeNormal = { fg = colors.none },
				-- CmpBorder = { fg = "#3e4145" },
			}
		end,
	},
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")
