# Dotfile Base ARCH

## Config
### XDG Portal
Force portal to Gnome for FileChoose (I Hate Dolphin & kde selector file)

Not installed if you use Gnome

```sh
sudo pacman -S xdg-desktop-portal-gnome
```

## Containers
Contient des fichier compose pour Podman
- Ollama ROCM | Cuda
- Language tool

## ETC
### Mkinitcpio
Kernel use cachyos repo delete cachyos rules is not present (in rules.d)

### Udev
- SSD Nvme RULES
- USB-rules
- PCI-Express RULES

### Environement
Rules for force IGPU Rendre (Gnome(48) & KDE(Plasma 6.4) create by default instance to Nvidia)

