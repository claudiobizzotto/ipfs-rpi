#!/usr/bin/env bash

set -o pipefail

function get_init_system() {
  init_from_process=$(sudo ps -p 1 | tail -n 1 | cut -d ":" -f 3 | cut -d " " -f 2)

  if [[ $init_from_process == *"systemd"* ]]; then
    echo "systemd" && return 1
  else
    [ -x "$(command -v dpkg)" ] &&
      init_from_package_manager=$(sudo dpkg -S /sbin/init | cut -d ":" -f 1) ||
      init_from_package_manager=$(sudo rpm -qf /sbin/init)

    [[ $init_from_process == *"systemd"* ]] && echo "systemd" && return 1
    [[ $init_from_package_manager == *"upstart"* ]] && echo "upstart" && return 1
  fi

  return 0
}

init_system=$(get_init_system)
if [ $init_system == "systemd" ]; then
  echo "-- systemd"
elif [ $init_system == "upstart" ]; then
  echo "-- upstart"
else
  echo "--Dude, are you using System 5 init???"
fi

exit 0

