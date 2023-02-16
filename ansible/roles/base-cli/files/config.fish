# ------------------------------------------------------------------------------
# Copyright 2018-2020 Uwe Arzt, mail@uwe-arzt.de
# SPDX-License-Identifier: Apache-2.0
# ------------------------------------------------------------------------------

set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx LC_CTYPE en_US.UTF-8

fish_add_path $HOME/bin

# Homebrew on macOS
if test -d /opt/homebrew/bin
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
end

# ARM gcc
if test -d /opt/gcc-arm/bin
    fish_add_path /opt/gcc-arm/bin
end

# ROS
if test -d /opt/ros/humble
    bass source /opt/ros/humble/setup.bash
end

# Rust
if test -d $HOME/.cargo
    fish_add_path $HOME/.cargo/bin
end


if status is-interactive
    set -gx EDITOR nvim
    set -gx VISUAL nvim

    alias hg="history | rg"
    alias vi="nvim"
    alias grep="rg"
end
