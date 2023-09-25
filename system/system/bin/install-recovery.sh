#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:95f45987718ad82149410c7c2f9ec4f158ab8768; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:d66fcfc1b3ae837f7217efe1461b6f232d7a9cf0 EMMC:/dev/block/platform/bootdevice/by-name/recovery 95f45987718ad82149410c7c2f9ec4f158ab8768 33554432 d66fcfc1b3ae837f7217efe1461b6f232d7a9cf0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
