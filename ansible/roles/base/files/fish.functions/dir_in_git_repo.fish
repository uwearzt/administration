# ------------------------------------------------------------------------------
# Copyright 2017-2018 by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
# under BSD License, see https://uwe-arzt.de/bsd-license
# ------------------------------------------------------------------------------

function dir_in_git_repo --argument directory
  git -C "$directory" rev-parse --is-inside-working-tree >/dev/null ^/dev/null
end