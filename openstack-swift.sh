#!/bin/bash

if [ $# -ne 1 ]; then
  echo "For example: $0 [start/stop/enable/disable]"
  exit 255;
fi

SERVICES="openstack-swift-account.service openstack-swift-account-auditor.service \
  openstack-swift-account-reaper.service openstack-swift-account-replicator.service \
  openstack-swift-container.service openstack-swift-container-auditor.service \
  openstack-swift-container-replicator.service openstack-swift-container-updater.service \
  openstack-swift-object.service openstack-swift-object-auditor.service \
  openstack-swift-object-replicator.service openstack-swift-object-updater.service"

for service in $SERVICES
do
  systemctl $1 $service
done
