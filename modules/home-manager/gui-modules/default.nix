{ pkgs, ... }:

{
  imports = [
    ./rofi

    ./firefox.nix
    ./kitty.nix
    ./prismlauncher.nix
    ./vscode.nix
  ];
}