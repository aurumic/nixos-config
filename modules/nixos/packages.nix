{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    devenv
    grc
  ];
}
