{ pkgs, ... }:

{
  home.packages = with pkgs; [
    inter
    open-sans
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    (nerdfonts.override {
      fonts = [
        "FiraCode"
        "Mononoki"
        "Hasklig"
        "ProggyClean"
        "Terminus"
      ];
    })
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      serif = [ "Open Sans" ];
      sansSerif = [ "Open Sans" ];
      monospace = [ "Hasklug Nerd Font" ];
    };
  };

  home.pointerCursor = {
    gtk.enable = true;
    name = "Afterglow-Recolored-Gruvbox-Black";
    package = pkgs.afterglow-cursors-recolored;
    size = 24;
  };

  gtk = {
    enable = true;
    font = {
      name = "Inter";
      size = 12;
    };

    theme = {
      name = "Gruvbox-Yellow-Dark";
      package = pkgs.gruvbox-gtk-theme.override {
        colorVariants = [ "dark" ];
        themeVariants = [ "yellow" ];
        tweakVariants = [ "macos" ];
      };
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    # cursorTheme = {
    #   name = "Afterglow-Recolored-Gruvbox-Black";
    #   package = pkgs.afterglow-cursors-recolored;
    #   size = 24;
    # };
  };
}
