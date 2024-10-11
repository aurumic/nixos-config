{ pkgs, ... }:

{
  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";

    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
  };
}