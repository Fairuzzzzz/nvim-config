return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      auto_update         = true,
      neovim_image_text   = "Neovim",
      main_image          = "neovim",
      buttons             = true,
      show_time           = true,
      editing_text        = "Editing %s",
      workspace_text      = "Project: %s",
    })
  end
}
