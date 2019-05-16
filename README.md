# libfprint-thinkpad-overlay
NixOS overlay providing ThinkPad variant of libfprint using vfs0090 fork

## Usage

In your `/etc/nixos/configuration.nix`, in the imports section add
```
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      /home/user/nix-libfprint-overlay/nixos/modules/services/security/fprintd.nix/fprintd.nix
    ]

  disabledModules = [ "services/security/fprintd.nix" ];
  nixpkgs.overlays = [(import /home/user/nix-libfprint-overlay/default.nix)];

  services.fprintd.package = pkgs.fprintd-thinkpad;  # https://github.com/NixOS/nixpkgs/pull/61546
  services.fprintd.enable = true;
```
