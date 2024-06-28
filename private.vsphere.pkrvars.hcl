##################################################################################
# VARIABLES
##################################################################################

# Credentials

vcenter_username                = "administrator@vsphere.local"
vcenter_password                = "<vCenter Password>"
ssh_username                    = "deployer"
#Generate hash - 'mkpasswd -m sha-512 --rounds=4096'
ssh_password                    = "<add hash to ./data/ks.cfg - password for user deployer>"

# vSphere Objects

vcenter_insecure_connection     = true
vcenter_server                  = "vcsa.demo.internal"
vcenter_datacenter              = "Demo.Internal"
vcenter_host                    = "esx02.demo.internal"
vcenter_datastore               = "Synology - ISOs"
vcenter_network                 = "VLAN 110 - Build"
vcenter_folder                  = "Templates"
