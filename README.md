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
      /home/user/nix-libfprint-overlay                    <-- this
    ]
```
  
## However, it fails to build. How do I fix it?

```
$ sudo nixos-rebuild build 
building Nix...
error: value is a function while a set was expected, at /nix/var/nix/profiles/per-user/root/channels/nixos/lib/modules.nix:141:29
(use '--show-trace' to show detailed location information)
building the system configuration...
error: value is a function while a set was expected, at /nix/var/nix/profiles/per-user/root/channels/nixos/lib/modules.nix:141:29
(use '--show-trace' to show detailed location information)
```
