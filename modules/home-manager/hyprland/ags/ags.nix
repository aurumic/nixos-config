{ pkgs, imports, ... }:

{
  inputs = [ inputs.ags.homeManagerModules.default ];

  programs.ags = {
    enabled = true;
    configDir = "./";
  }
}