{ lib, config, pkgs, ... }:

{
  options = {
    vscode.enable = lib.mkEnableOption "enable vscode";
  };

  config = lib.mkIf config.vscode.enable {
    programs.vscode = {
      enable = true;
      enableUpdateCheck = false;
      mutableExtensionsDir = true;

      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        arrterian.nix-env-selector

        ms-python.python
        ms-python.black-formatter
        batisteo.vscode-django

        aaron-bond.better-comments
      ];
    };
  };
}