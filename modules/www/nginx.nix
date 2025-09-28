{ pkgs, lib, ... }:

{
  services.nginx = {
    package = pkgs.nginxStable.override { openssl = pkgs.libressl; };
  } // lib.genAttrs [
    "enable" "recommendedGzipSettings" "recommendedBrotliSettings" "recommendedZstdSettings"
    "recommendedOptimisation" "recommendedProxySettings" "recommendedTlsSettings"
  ] (_: true);

  networking.firewall = let
    ports = [ 80 443 ];
  in {
    allowedTCPPorts = ports;
    allowedUDPPorts = ports;
  };
}