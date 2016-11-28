# zpool-scrub
systemd zpool scrub service and timer

(This was taken from [the original repo](https://github.com/lnicola/systemd-zpool-scrub))

## Installation

### Arch Linux
You can use the `systemd-zpool-scrub` AUR package.

### Linux
    install -m 644 -o root -g root zpool-scrub@.service /etc/systemd/system
    install -m 644 -o root -g root zpool-scrub@.timer /etc/systemd/system

    systemctl daemon-reload
    systemctl enable --now zpool-scrub@tank.timer
