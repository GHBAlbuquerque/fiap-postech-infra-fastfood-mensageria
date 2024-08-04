variable "project_name" {
  default = "fiap-postech-fastfood"
}

variable "region" {
  default = "us-east-1"
}

variable "profile" {
  default = "default"
}

variable "accountid" {
  default = "067184771399"
}

variable "lab_role_arn" {
  default = "labrole_arn"
}

variable "sqs_queues" {
  description = "creating list of queues (deadletter or not)"
  type        = any
  default     = {}
}