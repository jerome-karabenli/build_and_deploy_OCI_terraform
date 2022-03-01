variable "oci_compartment_ocid" {} # tfvars
variable "oci_tenancy_ocid" {} # tfvars
variable "oci_user_ocid" {} # tfvars
variable "oci_fingerprint" {} # tfvars
variable "oci_private_key_path" {} # tfvars
variable "oci_region" {} # tfvars


# optional variable, oci can select it automaticly
# variable "oci_default_fault_domain" {
#   default = "FAULT-DOMAIN-3"
# }

variable "oci_default_ssh_access_key_folder" {
  default = ""
}

variable "oci_core_vcn_cidr" {
  default = "10.0.0.0/16"
}

variable "oci_core_subnet_cidr10" {
  default = "10.0.0.0/24"
}

variable "oci_core_subnet_cidr11" {
  default = "10.0.1.0/24"
}

variable "oci_tag_key" {
  default = "jkarabenlidev"
}

variable "oci_tag_value" {
  default = "terraform"
}