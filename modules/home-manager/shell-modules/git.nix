{ lib, config, pkgs, ... }: 

{
  options = {
    git.enable = lib.mkEnableOption "enable git";
    git.userName = lib.mkOption { default = "aurumic"; };
    git.userEmail = lib.mkOption { default = "zarlophoenix@gmail.com"; };
  };

  config = lib.mkIf config.git.enable {
    programs.git = {
      enable = true;
      lfs.enable = true;

      userName = "${config.git.userName}";
      userEmail = "${config.git.userEmail}";

      aliases = {
        co = "checkout";
        cb = "checkout -b";
        br = "branch";
        sw = "switch";
        st = "status --short --branch";
        qc = "!git add -A && git commit -m \"$@\";";
      };
    };
  };
}