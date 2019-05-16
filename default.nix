self: super: {
    libfprint-thinkpad = super.callPackage ./pkgs/development/libraries/libfprint/default.nix { thinkpad = true; };
    fprintd-thinkpad= super.callPackage ./pkgs/tools/security/fprintd/default.nix { thinkpad = true; };
}
