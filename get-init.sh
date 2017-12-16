#!/usr/bin/env bash

set -o pipefail

function get_init_system() {
  init_from_process=$(sudo ps -p 1 | tail -n 1 | cut -d ":" -f 3 | cut -d " " -f 2)

  [[ $init_from_process == *"systemd"* ]] && echo "systemd" && return 1
  [[ $init_from_process == *"upstart"* ]] && echo "upstart" && return 1

  [ -x "$(command -v dpkg)" ] &&
    init_from_package_manager=$(sudo dpkg -S /sbin/init | cut -d ":" -f 1) ||
    init_from_package_manager=$(sudo rpm -qf /sbin/init)

  [[ $init_from_package_manager == *"systemd"* ]] && echo "systemd" && return 1
  [[ $init_from_package_manager == *"upstart"* ]] && echo "upstart" && return 1

  return 0
}

init_system=$(get_init_system)
if [ $init_system == "systemd" ]; then
  echo "-- systemd"
elif [ $init_system == "upstart" ]; then
  echo "-- upstart"
else
  echo ">> Unable to detect init system - you don't seem to be using systemd or upstart. The IPFS daemon will have to be controlled manually."
fi

exit 0

