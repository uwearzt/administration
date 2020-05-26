#!/bin/bash

virt-install \
  --name io \
  --description "io" \
  --os-type=Linux \
  --ram=4096 \
  --vcpus=2 \
  --disk path=/var/lib/libvirt/images/ionew.img,bus=ide \
  --network bridge:br0,model=e1000 \
  --graphics none \
  --host-device 0x8086:0x1521 \
  --autostart \
  --extra-args console=ttyS0 \
  --import