# CAD Tool Installation Instructions

The installation of the CAD tools can be done in many different ways. Here we propose a constellation that is as simple as possible for beginning designers with limited linux  command-line interface experience.

In parallel with the installation instructions, take a look at the [CAD Tool Computing Constellation](../CAD_tool_computing_constellation/README.md) so you get a sense of how all the pieces fit together. 

## Installation using a GitHub project repo (simplest workflow)

- [Installation Instructions for the Analog Design Tools on Windows and MacOS using GitHub project repo](install_using_repo.md)

## Instructions (more advanced workflow)

- [Windows](windows.md)
- [MacOS](macos.md)

- [Klayout & GF180](../klayout_pcells/README.md) (under construction)

## Other Sources for Installation Instructions

- [Boris Murmann, EE628 Tools Install](https://github.com/bmurmann/EE628/tree/main/3_Tools)
- [Kwantae Kim, Setting Up Open-Source Tools with Docker](https://kwantaekim.github.io/2024/05/25/OSE-Docker/)
- [Harald Pretl, IIC-OSIC-Tools](https://github.com/iic-jku/IIC-OSIC-TOOLS)


## PDK Update
### For LVS there is a PDK update (Aug. 11, 2025)

- From the host machine, log into the container as root (since you need root access to change the PDK); in MacOS the following command works from a terminal and puts your terminal inside the container. 
```
docker exec -it --user root <container_name> bash
```
- Then, execute the `ciel` command to get an updated PDK
```
PDK: gf180mcuD /foss/pdks > ciel enable --pdk-family gf180mcu fe2b40c6d7f43ab31aeb4c50c280b3da925c9462
Version fe2b40c6d7f43ab31aeb4c50c280b3da925c9462 not found locally, attempting to download…
Downloading common.tar.zst… ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:00
Downloading gf180mcu_fd_io.tar.zst… ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:00
Downloading gf180mcu_fd_ip_sram.tar.zst… ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:00
Downloading gf180mcu_fd_pr.tar.zst… ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:00
Downloading gf180mcu_fd_sc_mcu7t5v0.tar.zst… ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:00
Downloading gf180mcu_fd_sc_mcu9t5v0.tar.zst… ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:00
Version fe2b40c6d7f43ab31aeb4c50c280b3da925c9462 enabled for the gf180mcu PDK.
```

### Aug. 11 PDK Update Seems to have PCell Layout Issues
- Reverting back
```
PDK: gf180mcuD /foss/pdks > ciel ls
In /foss/pdks/ciel/gf180mcu/versions:
├── fe2b40c6d7f43ab31aeb4c50c280b3da925c9462 (2025.08.11) (enabled)
└── f2e289da6753f26157a308c492cf990fdcd4932d (2025.06.12)

PDK: gf180mcuD /foss/pdks > ciel enable --pdk-family gf180mcu f2e289da6753f26157a308c492cf990fdcd4932d
Version f2e289da6753f26157a308c492cf990fdcd4932d not found locally, attempting to download…
Downloading common.tar.zst… ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 0:00:00
Version f2e289da6753f26157a308c492cf990fdcd4932d enabled for the gf180mcu PDK.

PDK: gf180mcuD /foss/pdks > ciel ls
In /foss/pdks/ciel/gf180mcu/versions:
├── fe2b40c6d7f43ab31aeb4c50c280b3da925c9462 (2025.08.11)
└── f2e289da6753f26157a308c492cf990fdcd4932d (2025.06.12) (enabled)

```
