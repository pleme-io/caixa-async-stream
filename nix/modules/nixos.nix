# nix/modules/nixos.nix — auto-generated from async-stream.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.async-stream;
in {
  options.services.async-stream = {
    enable = lib.mkEnableOption "async-stream";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.async-stream or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
