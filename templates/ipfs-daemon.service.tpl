[Unit]
Description=IPFS daemon
Wants=network.target
After=network.target

[Service]
User={{ipfs_user}}
Group={{ipfs_group}}
Type=simple
Environment=IPFS_PATH={{ipfs_path}}
ExecStart=/usr/local/bin/ipfs daemon --migrate
ExecStop=/usr/bin/pkill -f ipfs
Restart=on-failure
RestartSec=10s

[Install]
WantedBy=multi-user.target
