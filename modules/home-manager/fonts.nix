{ pkgs, ... }:

{
  home.packages = with pkgs; [

  ];

    fonts.fontconfig.defaultFonts = {
      serif = [ "Open Sans" ];
      sansSerif = [ "Open Sans" ];
      monospace = [ "Hasklug Nerd Font" ];
    };
}