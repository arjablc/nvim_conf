return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      '                        Welcome to NVIM                             ',
      '            :h-                                  Nhy`               ',
      '           -mh.                           h.    `Ndho               ',
      '           hmh+                          oNm.   oNdhh               ',
      '          `Nmhd`                        /NNmd  /NNhhd               ',
      '          -NNhhy                      `hMNmmm`+NNdhhh               ',
      '          .NNmhhs              ```....`..-:/./mNdhhh+               ',
      '           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ',
      '           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ',
      '      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ',
      ' .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ',
      ' h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ',
      ' hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ',
      ' /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ',
      '  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ',
      '   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ',
      '     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ',
      '       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ',
      '       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ',
      '       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ',
      '       //+++//++++++////+++///::--                 .::::-------::   ',
      '       :/++++///////////++++//////.                -:/:----::../-   ',
      '       -/++++//++///+//////////////               .::::---:::-.+`   ',
      '       `////////////////////////////:.            --::-----...-/    ',
      '        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ',
      '         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ',
      '           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ',
      '            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``',
      '           s-`::--:::------:////----:---.-:::...-.....`./:          ',
      '          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ',
      '         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ',
      '        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ',
      '                        .-:mNdhh:.......--::::-`                    ',
      '                           yNh/..------..`                          ',
      '                                                                    ',
    }
    dashboard.section.buttons.val = {
      -- dashboard.button('e', '  > New File', '<cmd>ene<CR>'),
      -- dashboard.button('SPC ee', '  > Toggle file explorer', '<cmd>Neotree show filesystem right toggle<CR>'),
      -- dashboard.button('SPC ff', '󰱼 > Find File', '<cmd>Telescope find_files<CR>'),
      -- dashboard.button('SPC fg', '  > Find by Grep', '<cmd>Telescope live_grep<CR>'),
      -- dashboard.button('q', ' > Quit NVIM', '<cmd>qa<CR>'),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
