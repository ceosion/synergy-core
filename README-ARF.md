# Synergy Core (Forked by @ceosion)

This repo is a fork of [symless/synergy-core](https://github.com/symless/synergy-core) and includes modifications and additions that help run the software in my computing environments.

## About Me

**Author:** Alex Ford

**Website:** http://www.alexrichardford.com

**License:** GPL-2.0 (Inherited)

## Building and Such

- For the most part, the directions provided in the upstream repository's README.md is pretty spot on and easy enough to follow.
    - For convenience, here is the link to the actual [Compiling documentation](https://github.com/symless/synergy-core/wiki/Compiling).
- Once things are built, copy the appropriate ./scripts/ and "install" the artifacts to:
    - Windows: `C:\Program Files\Synergy2\`
    - Linux: `/opt/synergy2/`
- Create a suitable configuration, from the view of the server, and drop it into the server's installation directory.
- Should be good to go!

## TODO

**The following have been moved to the VS Code Kanban extension! Do NOT edit the
following list any further!**

- [x] CM initial start scripts
- [x] CM initial Docker files used to build binaries
- [ ] CM configuration files
- [ ] Create install script for Linux
- [ ] Create install script for Windows
- [ ] Figure out how to launch at system boot
- [ ] Figure out how to sync screen lock
- [ ] Figure out "sticky screens" so KM switch doesn't happen so fast/easily
- [ ] Auto-select configuration
- [ ] Capture log output somewhere useful, and ensure proper house keeping
- [ ] BUG: KM sharing stops if slave Windows machine enters elevated user mode
- [ ] Auto-discovery over private LANs
- [ ] Provide history of previously used server IPs in client run scripts
- [ ] Encrypt network traffic
- [ ] BUG: KM sharing stops if input control is locked to a Virtual Machine
    Run Virtual Box on Ubuntu 18.04 host, with Ubuntu 14.04 guest. Have synergy
    connected so that Ubuntu 18.04 host is KM sharing with a Windows 10 host.
    Click on the Ubuntu 14.04 guest's desktop, then try to move to the Windows
    10 host that is connected over synergy. Observe that the mouse is unable to
    move to the Windows 10 host.
    Workaround: clicking outside of the VM, on the Ubuntu 18.04 host, allows KM
    sharing functionality to begin working again.