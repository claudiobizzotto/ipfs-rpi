IPFS RPi
========

A bare bones [IPFS](https://ipfs.io) installer for the Raspberry Pi.

### Installation

Log in to your Raspberry Pi with an administrator account (you can use the default `pi` user for this). From any local
directory, clone or download this repo, `cd` into it and run the installer:

```SHELL
$ ./install
```

**Notes**

* Don't execute the installation script with `sudo`
* You'll need root privileges to run the installer (the `pi` user does so by default)
* The IPFS user directory will be created at `~/.ipfs` (eg.: `/home/pi/.ipfs`)
* Go's version will default to 1.9 (latest version as of this writing)
* If you are not logged in as the default user (`pi`), adjust `ipfs-daemon.service` accordingly. Assuming you're logged
in as `janedoe`, you'll want to update the following two lines:

```INI
User=janedoe
Environment=IPFS_PATH=/home/janedoe/.ipfs
```

### Tested on:

**Raspberry Pi version**:

- [ ] RPi 0
- [x] RPi 1
- [x] RPi 2
- [x] RPi 3

**Operating system**:

- [ ] Noobs
- [x] Raspbian

### How to contribute

All contributions are welcome. For bug reports, open a new issue. For code patches, open a pull request against the
`development` branch.

