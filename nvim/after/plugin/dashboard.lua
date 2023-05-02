local status, dashboard = pcall(require, "dashboard")
if (not status) then return end

dashboard.setup({
    theme = 'doom',
    config = {
        default_executive = 'telescope',
        header = {
            [[              ▄▄▄▄▄▄▄▄▄            ]],
            [[           ▄█████████████▄          ]],
            [[   █████  █████████████████  █████  ]],
            [[   ▐████▌ ▀███▄       ▄███▀ ▐████▌  ]],
            [[    █████▄  ▀███▄   ▄███▀  ▄█████    ]],
            [[    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌    ]],
            [[     ███▄▀███▄  ▀███▀  ▄███▀▄███    ]],
            [[     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ]],
            [[      ███▄▀█▄██ ██▄██ ██▄█▀▄███      ]],
            [[       ▀███▄▀██ █████ ██▀▄███▀      ]],
            [[      █▄ ▀█████ █████ █████▀ ▄█      ]],
            [[      ███        ███        ███      ]],
            [[      ███▄    ▄█ ███ █▄    ▄███      ]],
            [[      █████ ▄███ ███ ███▄ █████      ]],
            [[      █████ ████ ███ ████ █████      ]],
            [[      █████ ████▄▄▄▄▄████ █████      ]],
            [[       ▀███ █████████████ ███▀      ]],
            [[         ▀█ ███ ▄▄▄▄▄ ███ █▀        ]],
            [[            ▀█▌▐█████▌▐█▀            ]],
            [[               ███████              ]],
            [[                                      ]]
        },
        center = {
            { desc = '  Find File          ', action = 'Telescope find_files' },
            { desc = '  Search Text        ', action = 'Telescope live_grep' },
            { desc = '  Recent Files       ', action = 'Telescope oldfiles' },
            { desc = '  Config Dotfiles    ', action = 'nvim ~/dotfiles/' },
            { desc = 'x  Quit               ', action = 'q!' },
        },
        footer = {  }
    }
})
