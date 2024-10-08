{ pkgs, ... }: 

{
  programs.git = {
    enable = true;

    userName = "aurumic";
    userEmail = "zarlophoenix@gmail.com";

    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
      diff.colorMoved = "default";
    };

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

  home.packages = [ pkgs.gh ];
}
