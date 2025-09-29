{ config, ... }:

{
  security.acme = {
    defaults.email = "dominig@protonmail.com";
    acceptTerms = true;
    defaults = {
      dnsProvider = "cloudflare";
      credentialsFile = config.secrix.system.secrets.cloudflare-certs.decrypted.path;
    };
  };
}