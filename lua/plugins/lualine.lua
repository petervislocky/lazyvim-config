return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections = opts.sections or {}
    opts.sections.lualine_a = {
      {
        "mode",
        icon = "",
        fmt = function(str)
          return str
        end,
      },
    }
    return opts
  end,
}
