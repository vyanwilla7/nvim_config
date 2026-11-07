return function()
  require("real-icons").setup({
    pack = "material",

    packs = {},
    overrides = {},

    backend = "auto",

    size = {
      cols = 2,
      rows = 1,
      pixels = 64,
      padding = 0,
      trim = false,
    },

    color = {
      tint = nil,
      saturation = 0,
      brightness = 0,
      hue = 0,
      monochrome = false,
    },

    fallback = {
      enabled = true,
      provider = "auto",
    },

    integrations = {
      nvim_tree = true,
      telescope = true,
    },
  })
end
