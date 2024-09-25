{ lib, config, pkgs, ... }:


{
  options = {
    ruff.enable = lib.mkEnableOption "enable ruff";
  };

  config = lib.mkIf config.ruff.enable {
    programs.ruff = {
      enable = true;
      settings = {
        line-length = 128;

        format = {
          docstring-code-format = true;
        };
      };
    };
  };
}