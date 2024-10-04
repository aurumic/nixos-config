{ lib, config, pkgs, ... }:

{
  options = {
    vscode.enable = lib.mkEnableOption "enable vscode";
  };

  config = lib.mkIf config.vscode.enable {
    programs.vscode = {
      enable = true;
      mutableExtensionsDir = true;
    };
  };
}