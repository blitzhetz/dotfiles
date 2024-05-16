local wezterm = require("wezterm")

return {
    font_size = 13,
    max_fps = 90,
    animation_fps = 1,

    colors = {
        background = "#111111",
    },

    cursor_blink_rate = 200,
    default_cursor_style = "BlinkingBlock",

    use_fancy_tab_bar = false,
    -- hide_tab_bar_if_only_one_tab = true,

    window_close_confirmation = "NeverPrompt",
    hide_mouse_cursor_when_typing = false,
    -- tab_bar_at_bottom = true,

    enable_scroll_bar = false,

    window_padding = {
        left = "0px",
        right = "0px",
        top = "0px",
        bottom = "0px",
    },

    keys = {
        {
            key = "f",
            mods = "ALT",
            action = wezterm.action.ToggleFullScreen,
        },
        {
            key = "t",
            mods = "SHIFT|ALT",
            action = wezterm.action.SpawnTab("CurrentPaneDomain"),
        },
    },
}
