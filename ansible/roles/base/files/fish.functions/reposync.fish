# ------------------------------------------------------------------------------
# Copyright 2018 Uwe Arzt, mail@uwe-arzt.de
# SPDX-License-Identifier: Apache-2.0
# ------------------------------------------------------------------------------
# sync the current repo to a different server

function reposync --argument server
  set reponame (basename (pwd))
  rsync --recursive --exclude Cargo.lock --exclude target * "$server:$reponame" 
end
