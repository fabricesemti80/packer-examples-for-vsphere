/*
    DESCRIPTION:
    Ubuntu Server 18.04 LTS variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_GB"
vm_guest_os_keyboard = "gb"
vm_guest_os_timezone = "GMT"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "ubuntu"
vm_guest_os_version  = "18.04-lts"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "ubuntu64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"
vm_cdrom_type            = "sata"
vm_cpu_count             = 2
vm_cpu_cores             = 1
vm_cpu_hot_add           = false
vm_mem_size              = 2048
vm_mem_hot_add           = false
vm_disk_size             = 40960
vm_disk_controller_type  = ["pvscsi"]
vm_disk_thin_provisioned = true
vm_network_card          = "vmxnet3"

// Removable Media Settings
iso_path           = "contentlib-b3bfc4b1-c97d-4061-8cc6-e02be0dcdca2/f6b760d5-bad8-4ffb-bf47-771fa137b8b8"
iso_file           = "ubuntu-18.04.6-server-amd64_c881aa8c-c911-4298-8ce3-aec8718c8b79.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "f5cbb8104348f0097a8e513b10173a07dbc6684595e331cb06f93f385d0aecf6"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "3s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
