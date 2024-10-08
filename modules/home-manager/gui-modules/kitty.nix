{ ... }:

{
  programs.kitty = {
    enable = true;
    
    themeFile = "GruvboxMaterialDarkMedium";

    font = { name = "Hasklug Nerd Font"; };
    font.size = 12;

    shellIntegration = {
      enableFishIntegration = true;
      mode = "no-rc";
    };
  };
}
