[Unit]
Description=IPFS daemon
Wants=network.target
After=network.target

[Service]
Type=simple
User=${ipfs_user}
Environment=IPFS_PATH=${ipfs_user_dir}
ExecStart=/usr/local/bin/ipfs daemon
ExecStop=/usr/bin/pkill -f ipfs
Restart=on-failure
RestartSec=10s

[Install]
WantedBy=multi-user.target

