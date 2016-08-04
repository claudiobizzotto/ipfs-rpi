IPFS RPi
========

A bare bones [IPFS](https://ipfs.io) installer for the Raspberry Pi.

### Installation

Log in to your Raspberry Pi as the default user (`pi`). From any local directory, 
clone or download this repo, `cd` into it and run the installer:

```SHELL
$ ./install
```

**Notes**

* Make sure your SD card's size is 16 GB or more
* You need to be logged in as `pi` in order to correctly run the installer. Also, 
  the `pi` user needs root privileges to run the installer (it does by default)
* The IPFS user directory will be created at `/home/pi/.ipfs`
* Go's version will default to 1.6.3 (latest version as of this writing)

### Tested on:

**Raspberry Pi version**:

- [ ] RPi 0
- [x] RPi 1
- [ ] RPi 2
- [ ] RPi 3

**SD card size**:

- [ ] 8 GB
- [ ] 16 GB
- [ ] 32 GB
- [x] 64 GB

### How to contribute

For bug reports, open a new issue. For code patches, open a pull request against 
the `development` branch.

