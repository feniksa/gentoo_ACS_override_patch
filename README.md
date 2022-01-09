# gentoo_ACS_override_patch

This patchset dissable IOMMU groups. In other words, each device in system in it's own "fake" IOMMU group.
Bypassing the IOMMU groups for [GPU passthrough](https://wiki.gentoo.org/wiki/GPU_passthrough_with_libvirt_qemu_kvm#IOMMU_groups)

This patchset only for motherboards with some messed IOMMU groups, when GPU may be in same IOMMU group as USB host device, or audiocard.

# Disclamer

This patchet dissables IOMMU protection against I/O attacks from guest VM to host.
Please, never use this patchset in production.

# Apply patch

Clone repository to /etc/portage/patches direcotry with command

```
git clone https://github.com/feniksa/gentoo_ACS_override_patch.git /etc/portage/patches
```
Re-emerge gentoo-sources

```
emerge -v gentoo-sources
```
