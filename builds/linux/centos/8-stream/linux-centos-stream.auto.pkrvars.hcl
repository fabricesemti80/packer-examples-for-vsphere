/*
    DESCRIPTION:
    CentOS Stream 8 variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_GB"
vm_guest_os_keyboard = "gb"
vm_guest_os_timezone = "GMT"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "centos-stream"
vm_guest_os_version  = "8"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "centos64Guest" # "centos8_64Guest" #TODO: reverse this after vSphere upgrade

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
iso_path           = "contentlib-b3bfc4b1-c97d-4061-8cc6-e02be0dcdca2/3aae82bb-ec92-4e44-8308-27b2c771f8fb"
iso_file           = "CentOS-Stream-8-x86_64-latest-dvd1_0c3a036c-80d9-4294-996a-949495854866.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "493bb291f4757c926f9bf20c306167257f6f7dafa9e409b40008bc3d388772e8"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "2s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
