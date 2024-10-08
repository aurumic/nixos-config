{ pkgs, inputs, username, host, ...}:

{
  import = [
    inputs.home-manager.nixosModules.home-manager
  ];

  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs username host; };
    users.${username} = {
      imports = 
        if (host == "desktop") then 
          [ ./../home-manager/default.whitenight.nix ] 
        else [ ./../home-manager ];

      home.username = "${username}";
      home.homeDirectory = "/home/${username}";

      programs.home-manager.enable = true;
      home.stateVersion = "24.05";
    };
  };

  nix.settings.allowed-users = [ "${username}" ];
}
