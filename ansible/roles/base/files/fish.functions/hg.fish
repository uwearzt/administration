# ------------------------------------------------------------------------------
# Copyright 2017-2018 by Uwe Arzt mailto:mail@uwe-arzt.de, https://uwe-arzt.de
# under BSD License, see https://uwe-arzt.de/bsd-license
# ------------------------------------------------------------------------------

function hg --argument-names 'pattern'
  if test -n "$pattern"
    history | grep $pattern
  else
    echo "usage: hg \"pattern\""
  end
end
