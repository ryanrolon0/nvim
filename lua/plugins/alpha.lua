return {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        local time = os.date("%H:%M")
        local date = os.date("%a %d %b")
        local v = vim.version()
        local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch

        -- Set header
        dashboard.section.header.val = {
            [[=================     ===============     ===============   ========  ========]],
            [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
            [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
            [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
            [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
            [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
            [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
            [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
            [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
            [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
            [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
            [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
            [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
            [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
            [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
            [[||.=='    _-'                                                     `' |  /==.||]],
            [[=='    _-'                        N E O V I M                         \/   `==]],
            [[\   _-'                                                                `-_   /]],
            [[ `''                                                                      ``' ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "󰮗   Find file", ":Telescope find_files<CR>"),
            dashboard.button("e", "   File Explorer", ":Neotree<CR>"),
            dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("c", "   Configuration", ":e ~/.config/nvim/lua/vim_options.lua<CR>"),
            dashboard.button("R", "󱘞   Ripgrep", ":Telescope live_grep<CR>"),
            dashboard.button("q", "󰗼   Quit", ":qa<CR>"),
        }

        function centerText(text, width)
            local totalPadding = width - #text
            local leftPadding = math.floor(totalPadding / 2)
            local rightPadding = totalPadding - leftPadding
            return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
        end

        dashboard.section.footer.val = {
            centerText("God, he'll give us what we need,", 50),
            centerText("it may not be what we want. On Sight, K.W", 50),
            " ",
            -- centerText("NvimOnMy_Way❤️", 50),
            -- " ",
            centerText(version, 50),
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
