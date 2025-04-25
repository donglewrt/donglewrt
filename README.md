# DongleWrt

DongleWrt is a fork of [ImmortalWrt](https://immortalwrt.org) with support for WiFi dongles based on **msm89xx**. 

## Development
To build your own firmware, you need a GNU/Linux, BSD or macOS system (case sensitive filesystem required). Cygwin is unsupported because of the lack of a case sensitive file system.

### Requirements
To build with this project, Debian 11 is preferred. And you need use the CPU based on AMD64 architecture, with at least 4GB RAM and 25 GB available disk space. Make sure the __Internet__ is accessible.

Note:
- Do everything as an unprivileged user, not root, without sudo.
- Using CPUs based on other architectures should be fine to compile ImmortalWrt, but more hacks are needed - No warranty at all.
- You must __not__ have spaces or non-ascii characters in PATH or in the work folders on the drive.
- If you're using Windows Subsystem for Linux (or WSL), removing Windows folders from PATH is required, please see [Build system setup WSL](https://openwrt.org/docs/guide-developer/build-system/wsl) documentation.
- Using macOS as the host build OS is __not__ recommended. No warranty at all. You can get tips from [Build system setup macOS](https://openwrt.org/docs/guide-developer/build-system/buildroot.exigence.macosx) documentation.
- For more details, please see [Build system setup](https://openwrt.org/docs/guide-developer/build-system/install-buildsystem) documentation.

### Quickstart
1. Run `git clone -b <branch> --single-branch --filter=blob:none https://github.com/donglewrt/donglewrt` to clone the source code.
2. Run `cd donglewrt` to enter source directory.
3. Run `./scripts/feeds update -a` to obtain all the latest package definitions defined in feeds.conf / feeds.conf.default
4. Run `./scripts/feeds install -a` to install symlinks for all obtained packages into package/feeds/
5. Run `make menuconfig` to select your preferred configuration for the toolchain, target system & firmware packages.
6. Run `make` to build your firmware. This will download all sources, build the cross-compile toolchain and then cross-compile the GNU/Linux kernel & all chosen applications for your target system.

### Related Repositories
The main repository uses multiple sub-repositories to manage packages of different categories. All packages are installed via the OpenWrt package manager called opkg. If you're looking to develop the web interface or port packages to ImmortalWrt, please find the fitting repository below.
- [LuCI Web Interface](https://github.com/immortalwrt/luci): Modern and modular interface to control the device via a web browser.
- [ImmortalWrt Packages](https://github.com/immortalwrt/packages): Community repository of ported packages.
- [OpenWrt Routing](https://github.com/openwrt/routing): Packages specifically focused on (mesh) routing.
- [OpenWrt Video](https://github.com/openwrt/video): Packages specifically focused on display servers and clients (Xorg and Wayland).

## License
DongleWrt is licensed under [GPL-2.0-only](https://spdx.org/licenses/GPL-2.0-only.html).

## Acknowledgments
- Based on [ImmortalWrt](https://github.com/immortalwrt/immortalwrt)
