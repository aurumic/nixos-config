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
      
      plugins = [
        { name = "z"; src = pkgs.fishPlugins.z.src; }
        { name = "fzf-fish"; src = pkgs.fishPlugins.fzf-fish.src; }
        { name = "grc"; src = pkgs.fishPlugins.grc.src; }
        { name = "tide"; src = pkgs.fishPlugins.tide.src; } 
      ];

      shellAliases = {
        c = "clear";
        ls = "eza -a";
        ll = "eza -al";
        rebuild = "nixos-rebuild switch --flake"; 
      };
    };
  };
}