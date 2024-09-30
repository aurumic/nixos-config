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
    (nerdfonts.override { fonts = [ "FiraCode" "Mononoki" "Hasklig" "ProggyClean" "Terminus" ]; })
  ];

  fonts.fontconfig.defaultFonts = {
    serif = [ "Open Sans" ];
    sansSerif = [ "Open Sans" ];
    monospace = [ "Hasklug Nerd Font" ];
  };
}