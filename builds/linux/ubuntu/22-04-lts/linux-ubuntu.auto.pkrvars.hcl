/*
    DESCRIPTION:
    Ubuntu Server 22.04 LTS variables used by the Packer Plugin for VMware vSphere (vsphere-iso).
*/

// Guest Operating System Metadata
vm_guest_os_language = "en_GB"
vm_guest_os_keyboard = "gb"
vm_guest_os_timezone = "GMT"
vm_guest_os_family   = "linux"
vm_guest_os_name     = "ubuntu"
vm_guest_os_version  = "22.04-lts"

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
vm_disk_thin_provisioned = false
vm_network_card          = "vmxnet3"

// Removable Media Settings
iso_path           = "contentlib-b3bfc4b1-c97d-4061-8cc6-e02be0dcdca2/a7568055-6739-4657-8056-e6eba5c05bd2"
iso_file           = "ubuntu-22.04.2-live-server-amd64_7d6d1700-8a5c-41a9-b5d6-db469e4b8ff4.iso"
iso_checksum_type  = "sha256"
iso_checksum_value = "5e38b55d57d94ff029719342357325ed3bda38fa80054f9330dc789cd2d43931"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "5s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"
