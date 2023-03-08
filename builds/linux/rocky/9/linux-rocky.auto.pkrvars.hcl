/*
    DESCRIPTION:
    Rocky Linux 8 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_US"
vm_guest_os_keyboard = "us"
vm_guest_os_timezone = "UTC"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "rocky"
vm_guest_os_version  = "9.1"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "centos64Guest" # "other5xLinux64Guest" #TODO: reverse this after vSphere upgrade

// Virtual Machine Hardware Settings
vm_firmware              = "efi"
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
iso_path           = "contentlib-b3bfc4b1-c97d-4061-8cc6-e02be0dcdca2/136871b3-c400-47b3-9261-1cbbe464310a"
iso_file           = "Rocky-9.1-x86_64-dvd_e7bb2008-bbc9-4251-8b62-2913c577eda4.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "d490bac0fbc08b5621b8d5c861fb6e2ac0c46fa6b78cc3858d8594c56d65d5cb"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
