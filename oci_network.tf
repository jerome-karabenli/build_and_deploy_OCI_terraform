# Theses ressources are not optionnal, must be present

resource "oci_core_vcn" "default_oci_core_vcn" {
  compartment_id = var.oci_compartment_ocid   # required/updatable

  cidr_blocks    = [var.oci_core_vcn_cidr] #optional/updatable
  display_name   = "Default OCI core vcn" #optional/updatable
  dns_label      = "defaultvcn" #optional/not updatable
  is_ipv6enabled = false #optinal/not updatable
  freeform_tags  = {
    "${var.oci_tag_key}" = "${var.oci_tag_value}" #optional/updatable
  }
}

# THIS SUBNET IS OPEN TO WEB, AND APPLY CUSTOM SECURITY RULES
resource "oci_core_subnet" "default_oci_core_subnet10" {
  cidr_block        = var.oci_core_subnet_cidr10
  compartment_id    = var.oci_compartment_ocid
  display_name      = "${var.oci_core_subnet_cidr10} (default) OCI core subnet"
  dns_label         = "defaultsubnet10"
  route_table_id    = oci_core_default_route_table.default_oci_core_default_route_table.id
  vcn_id            = oci_core_vcn.default_oci_core_vcn.id
  security_list_ids = [oci_core_default_security_list.default_security_list.id, oci_core_security_list.custom_security_list.id]
  freeform_tags = {
    "${var.oci_tag_key}" = "${var.oci_tag_value}"
  }
}

# THIS SUBNET ALLOW ONLY CONNECTION FROM YOUR HOME IP ADDRESS
resource "oci_core_subnet" "oci_core_subnet11" {
  cidr_block        = var.oci_core_subnet_cidr11
  compartment_id    = var.oci_compartment_ocid
  display_name      = "${var.oci_core_subnet_cidr11} OCI core subnet"
  dns_label         = "defaultsubnet11"
  route_table_id    = oci_core_vcn.default_oci_core_vcn.default_route_table_id
  vcn_id            = oci_core_vcn.default_oci_core_vcn.id
  security_list_ids = [oci_core_default_security_list.default_security_list.id]
  freeform_tags = {
    "${var.oci_tag_key}" = "${var.oci_tag_value}"
  }
}

resource "oci_core_internet_gateway" "default_oci_core_internet_gateway" {
  compartment_id = var.oci_compartment_ocid
  display_name   = "Internet Gateway Default OCI core vcn"
  enabled        = "true"
  vcn_id         = oci_core_vcn.default_oci_core_vcn.id
  freeform_tags = {
    "${var.oci_tag_key}" = "${var.oci_tag_value}"
  }
}

resource "oci_core_default_route_table" "default_oci_core_default_route_table" {
  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.default_oci_core_internet_gateway.id
  }
  manage_default_resource_id = oci_core_vcn.default_oci_core_vcn.default_route_table_id
}