return {
  "windwp/nvim-autopairs",
  opts = {
    fast_wrap = {},
    disable_filetype = { "TelescopePrompt", "vim" },
    check_ts = true,
  },
  config = function(_, opts)
    local npairs = require("nvim-autopairs")
    npairs.setup(opts)
    local Rule = require("nvim-autopairs.rule")
    local cond = require("nvim-autopairs.conds")
    npairs.add_rules({
      Rule('"""', '"""', "python"):with_move(cond.none()):with_cr(cond.none()),
      Rule("'''", "'''", "python"):with_move(cond.none()):with_cr(cond.none()),
    })
  end,
}
