# ------------------------------------------------------------------------------
# Copyright 2018 Uwe Arzt, mail@uwe-arzt.de
# SPDX-License-Identifier: Apache-2.0
# ------------------------------------------------------------------------------

set -U EDITOR nvim
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

if status --is-interactive
  fish_vi_key_bindings
end

set fish_greeting

# brew
if test -d /usr/local/bin
  set -x PATH $PATH /usr/local/bin/
end
if test -d /usr/local/sbin
  set -x PATH $PATH /usr/local/sbin/
end

# local scripts
if test -d ~/script
  set -x PATH $PATH ~/script
end

# rust
if test -d ~/.cargo/bin
  set -x PATH $PATH ~/.cargo/bin
end
