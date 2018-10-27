# ------------------------------------------------------------------------------
# Copyright 2018 Uwe Arzt, mail@uwe-arzt.de
# SPDX-License-Identifier: Apache-2.0
# ------------------------------------------------------------------------------

function git_branch
  git rev-parse --abbrev-ref HEAD 2>/dev/null
end