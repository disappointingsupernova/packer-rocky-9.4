##################################################################################
# VARIABLES
##################################################################################

# HTTP Settings

http_directory = "http"

# Virtual Machine Settings

vm_guest_os_family          = "linux"
vm_guest_os_vendor          = "rocky"
vm_guest_os_member          = "server"
vm_guest_os_version         = "9.4"
vm_guest_os_language        = "en_US"
vm_guest_os_keyboard        = "us"
vm_guest_os_timezone        = "UTC"
vm_guest_os_name            = "rocky"
vm_guest_os_type            = "ubuntu64Guest"

vm_version                  = 13
vm_firmware                 = "bios"
vm_cdrom_type               = "sata"
vm_cpu_sockets              = 2
vm_cpu_cores                = 1
vm_mem_size                 = 2048
vm_disk_size                = 8192
vm_disk_controller_type     = ["pvscsi"]
vm_network_card             = "vmxnet3"
vm_boot_wait                = "4s"


communicator_port    = 22
communicator_timeout = "30m"

# ISO Objects
iso_file                    = "Linux/Rocky/Rocky-9.4-x86_64-dvd.iso"
iso_checksum                = "e20445907daefbfcdb05ba034e9fc4cf91e0e8dc164ebd7266ffb8fdd8ea99e7"

# Scripts

shell_scripts               = ["./scripts/setup_rocky94.sh"]
