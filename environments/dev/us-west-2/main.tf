# module "redis_prod_us_west_2" {
#   source = "../../../"

#   # AWS Configuration
#   aws_region          = var.aws_region
#   aws_assume_role_arn = var.aws_assume_role_arn
#   session_name        = var.session_name

#   # Repository labelling
#   git_repo         = var.git_repo
#   git_repo_name    = var.git_repo_name
#   git_repo_version = var.git_repo_version

#   # Required inputs
#   vpc_id = var.vpc_id

#   # Context and naming
#   name        = var.name
#   namespace   = var.namespace
#   environment = var.environment
#   stage       = var.stage

#   # Elasticache configuration
#   cluster_size   = var.cluster_size
#   instance_type  = var.instance_type
#   engine_version = var.engine_version
#   family         = var.family
#   port           = var.port

#   # Cluster mode configuration
#   cluster_mode_num_node_groups         = var.cluster_mode_num_node_groups
#   cluster_mode_replicas_per_node_group = var.cluster_mode_replicas_per_node_group

#   # Network configuration
#   subnets                       = var.subnets
#   availability_zones            = var.availability_zones
#   elasticache_subnet_group_name = var.elasticache_subnet_group_name

#   # Security
#   allowed_security_group_ids = var.allowed_security_group_ids

#   # Encryption
#   at_rest_encryption_enabled = var.at_rest_encryption_enabled
#   transit_encryption_enabled = var.transit_encryption_enabled
#   transit_encryption_mode    = var.transit_encryption_mode
#   kms_key_id                 = var.kms_key_id
#   auth_token                 = var.auth_token

#   # Backup & maintenance
#   snapshot_retention_limit = var.snapshot_retention_limit
#   snapshot_window          = var.snapshot_window
#   maintenance_window       = var.maintenance_window

#   # High availability
#   multi_az_enabled           = var.multi_az_enabled
#   automatic_failover_enabled = var.automatic_failover_enabled

#   # Monitoring & alarms
#   cloudwatch_metric_alarms_enabled = var.cloudwatch_metric_alarms_enabled
#   alarm_cpu_threshold_percent      = var.alarm_cpu_threshold_percent
#   alarm_memory_threshold_bytes     = var.alarm_memory_threshold_bytes
#   alarm_actions                    = var.alarm_actions
#   ok_actions                       = var.ok_actions

#   # Parameter group
#   create_parameter_group = var.create_parameter_group
#   parameter_group_name   = var.parameter_group_name
#   parameter              = var.parameter
# }