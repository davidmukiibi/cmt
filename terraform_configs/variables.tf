variable "assessment_region" {
  type    = "string"
  default = "us-west1"
}

variable "assessment_zone" {
  type    = "string"
  default = "us-west1-b"
}

// variable "assessment_reserved_env_ip" {
//   type = "string"
//   default = "35.187.96.84"
// }

variable "assessment_base_image" {
  type    = "string"
  default = "master-image-1539277385"
}

variable "assessment_project_id" {
  type    = "string"
  default = "kubernetes-practice-us"
}

variable "assessment_credential_file" {
  type    = "string"
  default = "../../kubernetes-practice-US.json"
}

variable "assessment_ip_cidr_range" {
  type    = "string"
  default = "10.0.0.0/24"
}

variable "assessment_service_account_email" {
  type    = "string"
  default = "kubernetes-practice-us@kubernetes-practice-us.iam.gserviceaccount.com"
}

variable "assessment_machine_type" {
  type    = "string"
  default = "g1-small"
}
