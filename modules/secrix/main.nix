{ config, ... }:

{
  secrix = {
    hostPubKey = (builtins.readFile ./crypt/${config.networking.hostName}.pubkey);
    hostIdentityFile = toString /etc/nixos/secrix_private.key;
    system.secrets = {
      cloudflare-certs.encrypted.file = ./secrets/cloudflare/certs;
    };
    services = {
      cloudflare-dyndns.secrets.token.encrypted.file = ./secrets/cloudflare/dns;
      discourse.secrets.secretKeyBaseFile.encrypted.file = ./secrets/discourse/keyBase;
      discourse.secrets.passwordFile.encrypted.file = ./secrets/discourse/adminPassword;
    };
  };
}