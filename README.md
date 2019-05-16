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
    ]

  nixpkgs.overlays = [(import /home/user/nix-libfprint-overlay/default.nix)];
```
  
## However, it fails to build. How do I fix it?

```
$ sudo nixos-rebuild build 
building Nix...
building the system configuration...
error: The option `services.fprintd.package' defined in `/etc/nixos/configuration.nix' does not exist.
(use '--show-trace' to show detailed location information)
```
