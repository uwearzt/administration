#!/bin/bash

virt-install \
  --name homeautomation \
  --description "homeautomation" \
  --os-type=Linux \
  --os-variant=ubuntu18.04 \
  --ram=4096 \
  --vcpus=2 \
  --disk path=/var/lib/libvirt/images/homeautomation.img,bus=virtio,size=50 \
  --network bridge:br0 \
  --graphics none \
  --host-device 0x2a07:0x0102 \
  --autostart \
  --location /home/uwe/ubuntu-18.04.3-server-amd64.iso \
  --extra-args console=ttyS0