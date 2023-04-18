/*
    DESCRIPTION:
    CentOS Linux 7 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_GB"
vm_guest_os_keyboard = "gb"
vm_guest_os_timezone = "GMT"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "centos"
vm_guest_os_version  = "7"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "centos64Guest" # "centos7_64Guest" #TODO: reverse this after vSphere upgrade

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
iso_path           = "contentlib-b3bfc4b1-c97d-4061-8cc6-e02be0dcdca2/37f5e552-16d0-4a5c-b27a-c1809d27e222"
iso_file           = "CentOS-7-x86_64-DVD-2009_7b16219d-73e5-474d-9b7a-411ebf6a12f5.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "e33d7b1ea7a9e2f38c8f693215dd85254c3a4fe446f93f563279715b68d07987"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
