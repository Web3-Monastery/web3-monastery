{ config, ... }:

{
  secrix = {
    hostPubKey = (builtins.readFile ./crypt/${config.networking.hostName}.pubkey);
    hostIdentityFile = toString /etc/nixos/secrix_private.key;
    /*
    system.secrets = {
      cloudflare-certs.encrypted.file = ./secrets/cloudflare-dns;
    };
    services = {
      cloudflare-dyndns.secrets.token.encrypted.file = ./secrets/cloudflare-dns;
    };
    */
  };
}