{ inputs, ... }:

{
  imports = [
    inputs.spicetify-nix.homeManagerModules.default

    ./rofi

    ./firefox.nix
    ./kitty.nix
    ./prismlauncher.nix
    ./spicetify.nix
    ./vscode.nix
  ];
}
