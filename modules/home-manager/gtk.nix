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
    (nerdfonts.override { fonts = [
      "FiraCode"
      "Mononoki"
      "Hasklig"
      "ProggyClean"
      "Terminus"
    ]; })
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      serif = [ "Open Sans" ];
      sansSerif = [ "Open Sans" ];
      monospace = [ "Hasklug Nerd Font" ];
    };
  };

  gtk = {
    enable = true;
    font = { name = "Inter"; size = 12; };

    theme = {
      name = "Gruvbox-Dark-B-LB";
      package = pkgs.gruvbox-gtk-theme.override {
        colorVariants = [ "dark" ];
        themeVariants = [ "all" ];
        tweakVariants = [ "outline" ];
        iconVariants = [ "dark" ];
      };
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.afterglow-cursors-recolored.override {
        themeVariants = [ "Gruvbox" ];
        gruvboxColorVariants = [ "Mojas84" ];
      };
      size = 24;
    };
  };
  
  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 24;
  };
}