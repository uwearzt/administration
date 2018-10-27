# ------------------------------------------------------------------------------
# Copyright 2018 Uwe Arzt, mail@uwe-arzt.de
# SPDX-License-Identifier: Apache-2.0
# ------------------------------------------------------------------------------

function hg --argument-names 'pattern'
  if test -n "$pattern"
    history | grep $pattern
  else
    echo "usage: hg \"pattern\""
  end
end
