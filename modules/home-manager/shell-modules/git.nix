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
        rc = "revert";
        st = "status --short --branch";
        qc = "!f() { git add -A && git commit -m \"$1\"; }; f";
        qcp = "!f() { git add -A && git commit -m \"$1\" && git push; }; f";
        undo = "reset --soft HEAD~1";
        squash = "rebase -i HEAD~";
      };
    };
  };
}