{
  outputs = inputs: {
    nixosModules = rec {
      basic = import ./. inputs;
      default = basic;
    };
  };

  inputs.nixpkgs.url = "github:nixos/nixpkgs";
}
