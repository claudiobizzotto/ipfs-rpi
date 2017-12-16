#!/usr/bin/env bash

# Get init system used by OS (upstart, systemd, etc.)
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

