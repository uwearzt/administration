# ------------------------------------------------------------------------------
# Copyright 2018 Uwe Arzt, mail@uwe-arzt.de
# SPDX-License-Identifier: Apache-2.0
# ------------------------------------------------------------------------------

function fish_prompt
  set -l cwd

  set cwd (prompt_pwd)

  set -l fish     "⋊>"

  set -l normal_color     (set_color normal)
  set -l directory_color  (set_color brown)
  set -l repository_color (set_color green)

  echo -n -s "[" $USER "@" (hostname -s) "]"
  echo -n -s $fish

  if dir_in_git_repo $pwd
    echo -n -s " " $directory_color $cwd $normal_color
    echo -n -s "(" $repository_color (git_branch) $normal_color ")"
  else
    echo -n -s " " $directory_color $cwd $normal_color
  end

  echo -n -s " "
end
