# ------------------------------------------------------------------------------
# Copyright 2017-2018 by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
# under BSD License, see https://uwe-arzt.de/bsd-license
# ------------------------------------------------------------------------------

set -U EDITOR code
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

# Rust
test -d "~/.cargo/bin"; and set -x PATH $PATH ~/.cargo/bin