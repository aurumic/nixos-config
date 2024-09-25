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

      aliases = {
        co = "checkout";
        br = "branch";
        st = "status --short --branch";
        qc = "!f() { git add -A && git commit -m \"$*\"; }; f";
        qcp = "!git add -A && git commit -m $* && git push";
      };
    };
  };
}