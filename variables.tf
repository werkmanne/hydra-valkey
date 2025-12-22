# Repository labelling
variable "git_repo" {
  description = "Git repository URL"
  type        = string 
}

variable "git_repo_name" {
  description = "Git repository name"
  type        = string 
}

variable "git_repo_version" {
  description = "Git repository version (branch, tag, commit)"
  type        = string 
}

# AWS Configuration
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "region" {
  description = "AWS region for labels"
  type        = string
}

variable "aws_assume_role_arn" {
  description = "ARN of the AWS IAM role to assume"
  type        = string
}

variable "session_name" {
  description = "Session name for AWS assume role"
  type        = string
}


# Required Inputs
variable "vpc_id" {
  description = "VPC ID where ElastiCache will be deployed"
  type        = string
}

# Context and Naming
variable "name" {
  description = "Name of the ElastiCache cluster"
  type        = string
}

variable "namespace" {
  description = "Namespace/prefix for resources"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
}

variable "stage" {
  description = "Deployment stage"
  type        = string
  default     = ""
}

# Elasticache Configuration
variable "cluster_size" {
  description = "Number of nodes in cluster"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "ElastiCache instance type"
  type        = string
  default     = "cache.t3.micro"
}

variable "engine_version" {
  description = "Redis/Valkey engine version"
  type        = string
  default     = "8.2"
}

variable "family" {
  description = "ElastiCache parameter group family"
  type        = string
  default     = "valkey8"
}

variable "port" {
  description = "Port for ElastiCache"
  type        = number
  default     = 6379
}

# Cluster Mode Configuration
variable "cluster_mode_num_node_groups" {
  description = "Number of node groups for cluster mode"
  type        = number
  default     = 0
}
variable "cluster_mode_replicas_per_node_group" {
  description = "Number of replicas per node group in cluster mode"
  type        = number
  default     = 0
}


# Network Configuration
variable "subnets" {
  description = "List of subnet IDs for ElastiCache"
  type        = list(string)
  default     = []
}

variable "availability_zones" {
  description = "Availability zones for deployment"
  type        = list(string)
  default     = []
}

variable "elasticache_subnet_group_name" {
  description = "Name of the ElastiCache subnet group"
  type        = string
  default     = ""
}

# Security
variable "allowed_security_group_ids" {
  description = "Allowed security group IDs"
  type        = list(string)
  default     = []
}



# Encryption
variable "at_rest_encryption_enabled" {
  description = "Enable encryption at rest"
  type        = bool
  default     = true
}

variable "transit_encryption_enabled" {
  description = "Enable encryption in transit"
  type        = bool
  default     = true
}

variable "transit_encryption_mode" {
  description = "Transit encryption mode"
  type        = string
  default     = "preferred"
}

variable "kms_key_id" {
  description = "KMS key ARN for encryption"
  type        = string
  default     = null
}

variable "auth_token" {
  description = "Redis auth token"
  type        = string
  default     = null
  sensitive   = true
}

# Backup & Maintenance
variable "snapshot_retention_limit" {
  description = "Snapshot retention limit in days"
  type        = number
  default     = 7
}

variable "snapshot_window" {
  description = "Daily time range for taking snapshots"
  type        = string
  default     = "05:00-09:00"
}

variable "maintenance_window" {
  description = "Maintenance window"
  type        = string
  default     = "sun:02:00-sun:03:00"
}

# High Availability
variable "multi_az_enabled" {
  description = "Enable multi-AZ"
  type        = bool
  default     = false
}

variable "automatic_failover_enabled" {
  description = "Enable automatic failover"
  type        = bool
  default     = false
}

# Monitoring
variable "cloudwatch_metric_alarms_enabled" {
  description = "Enable CloudWatch alarms"
  type        = bool
  default     = true
}

variable "alarm_cpu_threshold_percent" {
  description = "CPU utilization alarm threshold percentage"
  type        = number
  default     = 80
}

variable "alarm_memory_threshold_bytes" {
  description = "Memory usage alarm threshold in bytes"
  type        = number
  default     = 50000000
}

variable "alarm_actions" {
  description = "List of ARNs to notify when alarm triggers"
  type        = list(string)
  default     = []
}

variable "ok_actions" {
  description = "List of ARNs to notify when alarm goes to OK state"
  type        = list(string)
  default     = []
}

# Parameter Group
variable "create_parameter_group" {
  description = "Whether to create a custom parameter group"
  type        = bool
  default     = false
} 
variable "parameter_group_name" {
  description = "Name of the ElastiCache parameter group"
  type        = string
  default     = ""
}
variable "parameter" {
  description = "List of parameter name/value pairs for the parameter group"
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

# Additional Tags
variable "tags" {
  description = "Additional tags to apply to resources"
  type        = map(string)
  default     = {}
}