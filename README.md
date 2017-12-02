IPFS RPi
========

A bare bones [IPFS](https://ipfs.io) installer for the Raspberry Pi and other ARM-based devices.

## Installation

Log into your Raspberry Pi with an administrator account (you can use the default `pi` user for this). From any local
directory, clone or download this repo, `cd` into it and run the installer:

```SHELL
$ ./install
```

**Notes**

* Do **not** execute the installation script with `sudo`
* You'll need root privileges to run the installer (the `pi` user does so by default)
* The IPFS user directory will be created at `~/.ipfs` (eg.: `/home/pi/.ipfs`)

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
- [ ] Orange Pi

**Operating system**:

- [ ] Noobs
- [x] Raspbian

## How to contribute

All contributions are welcome. For bug reports, open a new issue. For code patches, open a pull request against the
`development` branch.

