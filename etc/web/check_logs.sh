#!/bin/bash
# ------------------------------------------------------------------------------
# Copyright 2019 Uwe Arzt, mail@uwe-arzt.de
# SPDX-License-Identifier: Apache-2.0
# ------------------------------------------------------------------------------
set -e
set -x

# ------------------------------------------------------------------------------
gzcat -f tmp/other* | \
  grep -v -i ".php" | \
  grep -v ".js" | \
  goaccess --log-format=VCOMBINED