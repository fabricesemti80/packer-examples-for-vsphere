/*
    DESCRIPTION:
    CentOS Stream 9 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_GB"
vm_guest_os_keyboard = "gb"
vm_guest_os_timezone = "GMT"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "centos-stream"
vm_guest_os_version  = "9"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "centos64Guest" # "other5xLinux64Guest" #TODO: reverse this after vSphere upgrade

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
vm_disk_thin_provisioned = false
vm_network_card          = "vmxnet3"

// Removable Media Settings
iso_path           = "contentlib-b3bfc4b1-c97d-4061-8cc6-e02be0dcdca2/a553a575-2de5-4f3a-83c0-afb5de7a00e5"
iso_file           = "CentOS-Stream-9-latest-x86_64-dvd1_c0fe1ac0-641e-4844-82e6-cfe30390cab0.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "fb3d89240aa91f3ee22bf68ab1435f002db50b2b884dfe8b10e8e2f01a8bd32c"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
