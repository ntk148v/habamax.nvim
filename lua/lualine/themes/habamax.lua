local colors = {
    color2 = '#1c1c1c',
    color3 = '#e0def4',
    color4 = '#f6c177',
    color5 = '#1c1c1c',
    color13 = '#87af87',
    color10 = '#31748f',
    color8 = '#eb6f92',
    color9 = '#bcbcbc'
}

return {
    visual = {
        a = {
            fg = colors.color2,
            bg = colors.color3,
            gui = 'bold'
        },
        b = {
            fg = colors.color4,
            bg = colors.color5
        }
    },
    replace = {
        a = {
            fg = colors.color2,
            bg = colors.color8,
            gui = 'bold'
        },
        b = {
            fg = colors.color4,
            bg = colors.color5
        }
    },
    inactive = {
        c = {
            fg = colors.color4,
            bg = colors.color2
        },
        a = {
            fg = colors.color4,
            bg = colors.color5,
            gui = 'bold'
        },
        b = {
            fg = colors.color4,
            bg = colors.color5
        }
    },
    normal = {
        c = {
            fg = colors.color9,
            bg = colors.color2
        },
        a = {
            fg = colors.color2,
            bg = colors.color10,
            gui = 'bold'
        },
        b = {
            fg = colors.color4,
            bg = colors.color5
        }
    },
    insert = {
        a = {
            fg = colors.color2,
            bg = colors.color13,
            gui = 'bold'
        },
        b = {
            fg = colors.color4,
            bg = colors.color5
        }
    }
}
