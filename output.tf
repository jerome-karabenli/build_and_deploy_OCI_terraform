# Adresse IP de la vm crée
output "master_instance_ip" {
  value = oci_core_instance.ubuntu_1.public_ip
}

# Adresse IP de la vm crée
output "backup_instance_ip" {
  value = oci_core_instance.ubuntu_2.public_ip
}

# Votre adresse IP public
output "my_ip_addr" {
  value = local.ifconfig_co_json.ip
}