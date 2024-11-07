{
  outputs = inputs: {
    nixosModules = rec {
      default = import ./. inputs;
    };
  };

  inputs.nixpkgs.url = "github:nixos/nixpkgs";
}
