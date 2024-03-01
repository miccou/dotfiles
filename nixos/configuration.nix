{ config, lib, pkgs, ... }:

{
  imports = [
  ];

  system.stateVersion = "23.11"; # Did you read the comment?

  environment.systemPackages = with pkgs; [
    git
    github-cli
    nodejs
    tmux
    wget
  ];

  fonts.packages = with pkgs; [
    fira-code
  ];
}
