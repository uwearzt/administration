# ------------------------------------------------------------------------------
# Copyright 2018 Uwe Arzt, mail@uwe-arzt.de
# SPDX-License-Identifier: Apache-2.0
# ------------------------------------------------------------------------------

function dir_in_git_repo --argument directory
  git -C "$directory" rev-parse --is-inside-working-tree >/dev/null ^/dev/null
end