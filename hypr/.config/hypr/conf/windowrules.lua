hl.window_rule({
    name = "Save window resize",
    match = {
      class = "xdg-desktop-portal-gtk"
    },
    size = {1200, 800},
    float = true,
    center = true
  })