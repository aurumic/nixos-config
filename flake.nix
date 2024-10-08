{
  description = "nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, self, ... } @inputs:
  let
    username = "utsurei";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = { allowUnfree = true; };
    };
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
      whitenight = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { host = "whitenight"; inherit self pkgs inputs username; };
        modules = [ ./hosts/whitenight ];
      };
    };
  };
}
