{ lib, config, pkgs, ... }:

{
  options = {
    fish.enable = lib.mkEnableOption "enable fish";
  };

  config = lib.mkIf config.fish.enable {
    programs.fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
      '';
      plugins = with pkgs.fishPlugins; [
        z
        fzf-fish
        grc
        tide
        gruvbox
      ];
    };
  };
}