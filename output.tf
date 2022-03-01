output "master_instance_ip" {
  value = oci_core_instance.ubuntu_1.public_ip
}

output "backup_instance_ip" {
  value = oci_core_instance.ubuntu_2.public_ip
}

output "my_ip_addr" {
  value = local.ifconfig_co_json.ip
}