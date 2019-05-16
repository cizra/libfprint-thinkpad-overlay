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
  
