{ config, ... }:

{
  services.discourse = {
    enable = true;
    hostname = "web3monastery.org";
    secretKeyBaseFile = config.secrix.services.discourse.secrets.secretKeyBaseFile.decrypted.path;
    admin = {
      email = "dominig@protonmail.com";
      fullName = "DominiG";
      username = "admin";
      passwordFile = config.secrix.services.discourse.secrets.passwordFile.decrypted.path;
    };
    database.ignorePostgresqlVersion = true;
    mail = {
      outgoing = {
        authentication = "login";
        username = "no-reply@web3monastery.org";
        serverAddress = "smtp.protonmail.ch";
        port = 587;
        passwordFile = config.secrix.services.discourse.secrets.smtpPassword.decrypted.path;
      };
      contactEmailAddress = config.services.discourse.admin.email;
      notificationEmailAddress = config.services.discourse.mail.outgoing.username;
    };
  };
}