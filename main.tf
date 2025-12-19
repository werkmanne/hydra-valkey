terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

# Data source to get caller identity for reference
data "aws_caller_identity" "current" {}

module "elasticache_redis" {
  source  = "cloudposse/elasticache-redis/aws"
  version = "2.0.0"

  # Required inputs
  vpc_id = var.vpc_id

  # Context and naming
  name                 = var.name
  namespace            = var.namespace
  environment          = var.environment
  stage                = var.stage
  
  # Elasticache configuration
  cluster_size           = var.cluster_size
  instance_type          = var.instance_type
  engine_version         = var.engine_version
  family                 = var.family
  port                   = var.port

  # CLUSTER MODE CONFIGURATION (Key changes for cluster)
  
  # Note: When cluster_mode_enabled = true, cluster_size is ignored
  # cluster_size is automatically calculated based on:
  # (cluster_mode_num_node_groups * (1 + cluster_mode_replicas_per_node_group))
  
  cluster_mode_enabled               = var.environment == "prod" ? true : false # Required for cluster mode
  cluster_mode_num_node_groups       = var.environment == "prod" ? var.cluster_mode_num_node_groups : 0
  cluster_mode_replicas_per_node_group = var.environment == "prod" ? var.cluster_mode_replicas_per_node_group : 0
  
  # Network configuration
  subnets                = var.subnets
  availability_zones     = var.availability_zones
  elasticache_subnet_group_name = var.elasticache_subnet_group_name
  
  # Security
  allowed_security_group_ids       = var.allowed_security_group_ids
  
  # Encryption
  at_rest_encryption_enabled   = var.at_rest_encryption_enabled
  transit_encryption_enabled   = var.transit_encryption_enabled
  kms_key_id                   = var.kms_key_id
  auth_token                   = var.auth_token
  transit_encryption_mode      = var.transit_encryption_mode
  
  # Backup & maintenance
  snapshot_retention_limit = var.snapshot_retention_limit
  snapshot_window         = var.snapshot_window
  maintenance_window      = var.maintenance_window
  
  # High availability
  multi_az_enabled            = var.multi_az_enabled
  automatic_failover_enabled  = var.automatic_failover_enabled
  
  # Monitoring & alarms
  cloudwatch_metric_alarms_enabled = var.cloudwatch_metric_alarms_enabled
  alarm_cpu_threshold_percent      = var.alarm_cpu_threshold_percent
  alarm_memory_threshold_bytes     = var.alarm_memory_threshold_bytes
  alarm_actions                    = var.alarm_actions
  ok_actions                       = var.ok_actions
  
  # Parameter group
  create_parameter_group = var.create_parameter_group
  parameter_group_name   = var.parameter_group_name
  parameter             = var.parameter
  

}