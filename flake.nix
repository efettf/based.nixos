{
  outputs = {...}: {
    nixosModules = rec {
      basic = import ./.;
      default = basic;
    };
  };
}
