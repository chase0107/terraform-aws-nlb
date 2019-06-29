variable "load_balancer_name" {
  description = "The name of the LB."
  type        = "string"
  default     = []
}

variable "load_balancer_is_internal" {
  description = "If true, the LB will be internal."
  type        = "string"
}

variable "load_balancer_type" {
  description = "The type of load balancer to create. "
  type        = "string"
}

variable "vpc_id" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "subnets" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "enable_deletion_protection" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "enable_cross_zone_load_balancing" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "listener_port" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "listener_protocol" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_name" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_count" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_port" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_protocol" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "access_logs_bucket" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "access_logs_bucket_prefix" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "access_logs_enabled" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "ssl_policy" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "certificate_arn" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "action_type" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "redirect" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "fixed_responses" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "priority" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "listener_action_type" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "condition_field" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "condition_value" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_prefix" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_prefix" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_type" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_deregistration_delay" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "lambda_headers_enabled" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "proxy_protocol" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "stickiness_type" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "stickiness_cookie_duration" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "stickiness_enabled" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_enabled" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_internal" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_path" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_pool" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_protocol" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_timeout" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_healthy_threshold" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_unhealthy_threshold" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "health_check_matcher" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}

variable "target_group_az" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = "string"
}
