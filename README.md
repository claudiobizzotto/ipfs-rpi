IPFS RPi
========

A bare bones [IPFS](https://ipfs.io) installer for the Raspberry Pi and other ARM-based devices.

## Installation

Log into your system with an administrator account, like the default OS user. For example, on the Raspberry Pi, most
operating systems will default to the `pi` user, whereas on the Orange Pi that's going to be `orangepi`.

From any local directory, clone or download this repo, `cd` into it and run the installer:

```SHELL
$ ./install
```

**Notes**

* Do **not** execute the installation script with `sudo`
* You'll need root privileges to run the installer. The default OS user (`pi`, `orangepi` etc.) does so by default
* The IPFS user directory will be created at `~/.ipfs` (eg.: `/home/pi/.ipfs`, `/home/orangepi/.ipfs` etc.)

### Options

You can specify a version for IPFS (eg.: `v0.4.11`):

```SHELL
$ ./install v0.4.11
```

## Uninstalling

In order to uninstall IPFS, just execute the uninstaller and follow the uninstallation steps:

```SHELL
$ ./uninstall
```

## Tested on:

**ARM Device**:

- [ ] RPi 0
- [x] RPi 1
- [x] RPi 2
- [x] RPi 3
- [x] Orange Pi

**Operating system**:

- [ ] Noobs
- [x] Raspbian
- [x] Ubuntu 14.04 (Trusty)

## How to contribute

All contributions are welcome. For bug reports, open a new issue. For code patches, open a pull request against the
`development` branch.

