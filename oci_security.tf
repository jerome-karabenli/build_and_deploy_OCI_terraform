
# Doc https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list
resource "oci_core_default_security_list" "default_security_list" {
  compartment_id             = var.oci_compartment_ocid
  manage_default_resource_id = oci_core_vcn.default_oci_core_vcn.default_security_list_id

  display_name = "Default security list"
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "all"
  }
  # n'ouvre l'acces qu'a votre adresse IP publique
  ingress_security_rules {
    protocol = 1 # icmp
    source   = "${local.ifconfig_co_json.ip}/32"

    description = "Allow icmp from ${local.ifconfig_co_json.ip}/32"

  }

  ingress_security_rules {
    protocol = 6 # tcp
    source   = "${local.ifconfig_co_json.ip}/32"

    description = "Allow SSH from ${local.ifconfig_co_json.ip}/32"

    tcp_options {
      min = 22
      max = 22
    }
  }

  ingress_security_rules {
    protocol = 6 # tcp
    source   = "${local.ifconfig_co_json.ip}/32"

    description = "Allow HTTP from ${local.ifconfig_co_json.ip}/32"

    tcp_options {
      min = 80
      max = 80
    }
  }

  ingress_security_rules {
    protocol = 6 # tcp
    source   = "${local.ifconfig_co_json.ip}/32"

    description = "Allow HTTPS from ${local.ifconfig_co_json.ip}/32"

    tcp_options {
      min = 443
      max = 443
    }
  }

  ingress_security_rules {
    protocol = "all"
    source   = var.oci_core_vcn_cidr

    description = "Allow all from vcn subnet"
  }

  freeform_tags = {
    "${var.oci_tag_key}" = "${var.oci_tag_value}"
  }
}


resource "oci_core_security_list" "custom_security_list" {
  compartment_id = var.oci_compartment_ocid
  vcn_id         = oci_core_vcn.default_oci_core_vcn.id
  display_name = "Custom security list"

  # Décommentez ici si vous utilisez CloudFlare
  # dynamic ingress_security_rules {
  #   for_each     = data.cloudflare_ip_ranges.cloudflare.ipv4_cidr_blocks
  #   content {
  #     protocol = 6 # tcp
  #     source   = ingress_security_rules.value

  #     description = "Allow HTTPS from cloudflare"

  #     tcp_options {
  #       min = 443
  #       max = 443
  #     }
  #   }
  # }

  #  Commentez ici si vous utilisez CloudFlare, ATTENTION cette regle ouvre tous les ports a tout le monde
  ingress_security_rules {
    protocol = "all"
    source   = "0.0.0.0/0"

    description = "Allow all from vcn subnet"
  }

  freeform_tags = {
    "${var.oci_tag_key}" = "${var.oci_tag_value}"
  }
}