{ lib, config, inputs, ... }:

{
  nix = {
    registry = (lib.mapAttrs (_: flake: {inherit flake;})) ((lib.filterAttrs (_: lib.isType "flake")) inputs);
    nixPath = [ "/etc/nix/path" ];
    settings.experimental-features = [ "nix-command" "flakes" "impure-derivations" ];
  };
  environment.etc =
    lib.mapAttrs'
      (name: value: {name = "nix/path/${name}"; value.source = value.flake;})
      config.nix.registry
    // { };
}
