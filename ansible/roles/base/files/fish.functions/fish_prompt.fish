# ------------------------------------------------------------------------------
# Copyright 2018 Uwe Arzt, mail@uwe-arzt.de
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and 
# limitations under the License.
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
