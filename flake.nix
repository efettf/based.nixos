{
  outputs = inputs: {
    nixosModules = rec {
      basic = import ./. inputs;
      default = basic;
    };
  };
}
