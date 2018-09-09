description "IPFS daemon"

env IPFS_PATH={{ipfs_path}}

start on runlevel [2345]
stop on runlevel [!2345]

script
  echo $$ > /var/run/ipfs-daemon.pid
  exec su -s /bin/sh -c "/usr/local/bin/ipfs daemon --migrate" {{ipfs_user}}
end script

pre-stop script
  rm /var/run/ipfs-daemon.pid
end script
