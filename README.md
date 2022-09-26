My own system for managing my desktop configuration using Ansible.

## Description

This project is not just a collection of dotfiles, it provides a tool (using Ansible) that it can automatically does the following:

1. Automatically install Arch (for VMs)
2. Install packages (with pacman, yay and pip)
3. Apply program configurations using GNU Stow (as a typical dotfiles repository would do)
4. Run any series of additional commands to fine-tune the configuration (setting up timezone, services, wallpapers...)

Basing the project on Ansible offers many advantages versus shell scripting, some of them could be:
- *Simplicity*: Many Ansible modules make many configurations on step 4 much more simple.
- *Idempotency*: Your configuration is tested every time you run the script, which avoids running into errors from typos on scripts that could not be tested.  
- *Infrastructure as Code*: No need to keep a todo list or documentation for troubleshooting, the Ansible code itself is the documentation 

## OS Info

A general overview of the software I use.

```
OS            = Arch
Theme         = Dracula
WM            = dwm
Bar           = dwmblocks
Terminal      = kitty
Font          = SourceCodePro
Wallpapers    = https://albertcanales.com/wallpapers.zip
Shell         = bash
Editor        = subl / nvim
```

## Installation

Arch is installed with `archinstall`. Example configurations (perfectly valid for VMs) for this installer can be found in the *archinstall* directory.

## Post-Installation

The Post-Instalation is completely managed by Ansible. The general structure is not definitive, as it can and will be improved, so the following will change drastically on future commits.

To execute the Ansible Playbooks, simply run `ansible-playbook main.yml`. It will also take care of the required modules.

The Post-Installation process is divided into three sections:

1. Package Install
2. Stowing dotfiles
3. Additional configuration

### Package Install

All packages are installed with `pacman`, `yay` and `pip`. The default packages that are going to be installed can be found in `group_vars/local`, on the *packages* variable.

Packages are separated into *system* and *apps*. I use this distinction to install only the first ones on VMs, but all of them on my desktop. This option is controlled by the *install_apps* variable.

To make changes to the way packages are installed, take a look at the `packages.yml` file. This section replaces the use of `postinstall.sh` on my previous dotfile management.

### Stowing dotfiles

Dotfiles are managed with *GNU Stow*. In short, for each program whose dotfiles want to be managed a directory on the repo is created (which I call module), and the contents of that module will be symlinked to a target destination. This simplifies the management of dotfiles, as the target destination can be anywhere on the filesystem.

The modules can be configured with the *modules* variable in `group_vars/local`. The actual structure will be completely changed later on, as now it is a bit overengenieered. So documentation for this section will arrive at that point :P.

To make changes to the way modules are managed, take a look at the `dotfiles.yml` file. This section replaces the use of `autostow.sh` on my previous dotfile management.

### Additional configuration

Apart from installing packages and symlinking their dotfiles, many more tasks may be executed. These are inside of `extras.yml`, although in the future will be divided into their own files, grouped by the module they belong.
