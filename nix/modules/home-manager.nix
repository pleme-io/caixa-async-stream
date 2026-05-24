# nix/modules/home-manager.nix — auto-generated from async-stream.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.async-stream; in {
  options.programs.async-stream = {
    enable = lib.mkEnableOption "async-stream";
    package = lib.mkOption { type = lib.types.package; default = pkgs.async-stream or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
