variable "rg_group" {
  type = string
  default = "nodejs"
}

variable "location" {
  type = string
  default = "East US"
}

variable "appserviceplan" {
  type = string
  default = "pearlwbappplan7216"
}

variable "app_standard" {
  type = string
  default = "Standard"
}

variable "app_standard_size" {
  type = string
  default = "S1"
}

variable "app_service" {
  type = string
  default = "pearlwbapp7216"
}

variable "dotnet_framework_version" {
  type = string
  default = "v4.0"
}

variable "scm_type" {
  type = string
  default = "LocalGit"
}

variable "some_key" {
  type = string
  default = "some-value"
}

variable "connection_string_name" {
  type = string
  default = "Database"
}

variable "connection_string_type" {
  type = string
  default = "SQLServer"
}

variable "connection_string_value" {
  type = string
  default = "Server=some-server.mydomain.com;Integrated Security=SSPI"
}
