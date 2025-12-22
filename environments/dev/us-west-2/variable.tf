variable "aws_region" {
  type = string
}

variable "aws_account_id" {
  type = string
}

variable "aws_assume_role_arn" {
  type = string
}

variable "session_name" {
  type = string
}

variable "git_repo" {
  type = string
}

variable "git_repo_name" {
  type = string
}

variable "git_repo_version" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "name" {
  type = string
}

variable "namespace" {
  type = string
}

variable "environment" {
  type = string
}

variable "stage" {
  type = string
}

variable "cluster_size" {
  type = number
}

variable "instance_type" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "family" {
  type = string
}

variable "port" {
  type = number
}

variable "cluster_mode_num_node_groups" {
  type = number
}

variable "cluster_mode_replicas_per_node_group" {
  type = number
}

variable "subnets" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "elasticache_subnet_group_name" {
  type = string
}

variable "allowed_security_group_ids" {
  type = list(string)
}

variable "at_rest_encryption_enabled" {
  type = bool
}

variable "transit_encryption_enabled" {
  type = bool
}

variable "transit_encryption_mode" {
  type = string
}

variable "kms_key_id" {
  type      = string
  sensitive = true
}

variable "auth_token" {
  type      = string
  sensitive = true
}

variable "snapshot_retention_limit" {
  type = number
}

variable "snapshot_window" {
  type = string
}

variable "maintenance_window" {
  type = string
}

variable "multi_az_enabled" {
  type = bool
}

variable "automatic_failover_enabled" {
  type = bool
}

variable "cloudwatch_metric_alarms_enabled" {
  type = bool
}

variable "alarm_cpu_threshold_percent" {
  type = number
}

variable "alarm_memory_threshold_bytes" {
  type = number
}

variable "alarm_actions" {
  type = list(string)
}

variable "ok_actions" {
  type = list(string)
}

variable "create_parameter_group" {
  type = bool
}

variable "parameter_group_name" {
  type = string
}

variable "parameter" {
  type = list(object({
    name  = string
    value = string
  }))
}