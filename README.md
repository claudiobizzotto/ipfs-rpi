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

### Installation options

You can specify a version for IPFS (eg.: `v0.4.11`):

```SHELL
$ ./install v0.4.11
```

## IPFS usage

You can find a lot of information on how to use IPFS on the [official website](https://ipfs.io/docs/getting-started/).
If you just want to test whether the installation was successful or not, you can start by _checking out_ an IPFS object:

```SHELL
$ ipfs cat /ipfs/QmRoyYykmw7XUsifRqkR7v6ezKuqhmvoQuukPGR1aQKRZh
```

To confirm that your node is connected to the IPFS swarm (aka is online), you can list your node's peers:

```SHELL
$ ipfs swarm peers
```

## IPFS daemon

The IPFS daemon needs to be running in order for your IPFS node to appear online. The installer already takes care of
running the daemon on system startup by default, but if you want to control that process manually, you can use the
operating system's init system directly.

For `systemd` (Raspbian Stretch, Ubuntu 15.04 and newer, CentOS 7 and newer), you can use:

```SHELL
$ sudo systemctl {start|status|stop} ipfs-daemon.service
```

For `upstart` (Ubuntu 9.10 to Ubuntu 14.10, Centos 6), you can use:

```SHELL
$ sudo service ipfs-daemon {start|status|stop}
```

## Uninstallation

In order to uninstall IPFS, just execute the uninstaller and follow the uninstallation steps:

```SHELL
$ ./uninstall
```

## Support matrix

| SBC/ARM device    | Raspbian Stretch  | Ubuntu 14.04  |
| :---------------- | :---------------- | :------------ |
| Raspberry Pi 0    | Not tested        | Not tested    |
| Raspberry Pi 1    | Yes               | Not tested    |
| Raspberry Pi 2    | Yes               | Not tested    |
| Raspberry Pi 3    | Yes               | Not tested    |
| Orange Pi         | Not tested        | Yes           |

## How to contribute

* for bug reports, open a new issue
* for code patches, open a pull request against the `development` branch
* for bugs specific to IPFS, please refer to the [official channel](https://discuss.ipfs.io)

