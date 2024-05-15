require("colorbuddy").colorscheme("gruvtty")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

Color.new("white", "#f2e5bc")
Color.new("red", "#cc6666")
Color.new("pink", "#fef601")
Color.new("green", "#99cc99")
Color.new("yellow", "#f8fe7a")
Color.new("blue", "#81a2be")
Color.new("aqua", "#8ec07c")
Color.new("cyan", "#8abeb7")
Color.new("purple", "#8e6fbd")
Color.new("violet", "#b294bb")
Color.new("orange", "#de935f")
Color.new("brown", "#a3685a")

Color.new("seagreen", "#698b69")
Color.new("turquoise", "#698b69")

Color.new("gray1", "#1d1d1d")

local background_string = "#111111"
Color.new("background", background_string)
Color.new("gray0", background_string)

Group.new("Normal", c.superwhite, c.gray0)

Group.new("Comment", c.gray1:light():light():light():light(), c.none, s.italic)

Group.new("@constant", c.orange, nil, s.none)
Group.new("@function", c.yellow, nil, s.none)
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.violet, nil, s.none)
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none)
Group.new("@property", c.blue)
Group.new("@variable", c.superwhite, nil)
Group.new("@variable.builtin", c.purple:light():light(), g.Normal)

Group.new("@function.call.lua", c.blue:dark(), nil, nil)

Group.new("Whitespace", c.gray1:light(), nil, nil)
Group.new("ExtraWhitespace", c.red, nil, nil)
Group.new("NonText", c.gray1:light():light(), nil, nil)
Group.new("LineNr", c.gray1:light():light(), c.background, nil)
Group.new("CursorLineNr", c.yellow, c.background, nil)
Group.new("StatusLine", c.white, c.blue:dark():dark():dark(), nil)

Group.new("DiffAdd", c.green, c.background, s.bold, c.green)
Group.new("DiffChange", c.yellow, c.background, s.bold, c.yellow)
Group.new("DiffDelete", c.red, c.background, s.bold)
Group.new("DiffText", c.blue, c.background, s.bold, c.blue)

Group.new("TelescopeMatching", c.blue:light(), g.Special, g.Special, g.Special)
Group.new("TelescopeBorder", c.blue)
Group.new("TelescopePromptBorder", c.blue)
Group.new("TelescopeTitle", g.Normal)
Group.new("TelescopePromptPrefix", g.Normal)
Group.link("TelescopeSelection", g.CursorLine)
Group.new("TelescopeSelectionCaret", c.blue)

Group.new("Error", c.red:light())
Group.new("Warning", c.yellow)
Group.new("Information", c.blue)
Group.new("Hint", c.cyan)
