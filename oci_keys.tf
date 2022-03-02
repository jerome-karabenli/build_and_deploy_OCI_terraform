# Doc https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key
resource "tls_private_key" "default_node_ssh_access" {
  algorithm   = "RSA"
  rsa_bits    = "4096"
  ecdsa_curve = "P256"
}

# Doc https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
resource "local_file" "oci_default_node_ssh_access_privkey" {
    content  = tls_private_key.default_node_ssh_access.private_key_pem
    filename = "${var.oci_default_ssh_access_key_folder}/id_rsa"
    file_permission = "0400"   
}

resource "local_file" "oci_default_node_ssh_access_pubkey" {
    content  = tls_private_key.default_node_ssh_access.public_key_openssh
    filename = "${var.oci_default_ssh_access_key_folder}/id_rsa.pub"
    file_permission = "0400"
}