# ------------------------------------------------------------------------------
# Copyright 2017-2018 by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
# under BSD License, see https://uwe-arzt.de/bsd-license
# ------------------------------------------------------------------------------

function git_branch
  git rev-parse --abbrev-ref HEAD
end