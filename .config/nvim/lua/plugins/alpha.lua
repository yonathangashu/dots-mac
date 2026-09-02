return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.startify'

    dashboard.section.header.opts.position = 'center'
    for _, btn in ipairs(dashboard.section.top_buttons.val) do
      btn.opts.position = 'center'
    end

    alpha.setup(dashboard.opts)
  end,
}
