variable "cloudflare_api_token" {
    type = string
    description = "Token for the cloudflare account"
}

variable "account_id"{
    type = string
    description = "Account ID"
}

variable "d1_database_name" {
    type = string
    description = "D1 database name"
}


variable "worker_name" {
  description = "Nombre del Worker de Cloudflare"
  type        = string
  default     = "mysuperworker"
}
