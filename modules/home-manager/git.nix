{ lib, config, pkgs, ... }: 

{
  options = {
    git.enable = lib.mkEnableOption "enable git";
  };

  config = lib.mkIf config.git.enable {
    programs.git = {
      enable = true;
      lfs.enable = true;

      userName = "aurumic";
      userEmail = "zarlophoenix@gmail.com";
    };
  };
}