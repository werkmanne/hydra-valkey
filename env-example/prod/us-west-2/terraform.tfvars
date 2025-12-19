# AWS Configuration
aws_region              = "us-west-2"
aws_assume_role_arn     = "arn:aws:iam::987654321098:role/terraform-assume-role"
session_name            = "terraform-prod-us-west-2"

# Repository labelling
git_repo         = "https://github.com/your-org/redis-module.git"
git_repo_name    = "redis-module"
git_repo_version = "v1.0.0"

# Required inputs
vpc_id = "vpc-prod-us-west-2-001"

# Context and naming
name        = "redis-prod"
namespace   = "mycompany"
environment = "prod"
stage       = "production"

# Elasticache configuration
cluster_size   = 3
instance_type  = "cache.r7g.xlarge"
engine_version = "7.1"
family         = "redis7"
port           = 6379

# Cluster mode configuration
cluster_mode_num_node_groups          = 3
cluster_mode_replicas_per_node_group  = 1

# Network configuration
subnets                       = ["subnet-prod-us-west-2-001", "subnet-prod-us-west-2-002", "subnet-prod-us-west-2-003"]
availability_zones            = ["us-west-2a", "us-west-2b", "us-west-2c"]
elasticache_subnet_group_name = "redis-prod-us-west-2-subnet-group"

# Security
allowed_security_group_ids = ["sg-prod-us-west-2-redis"]

# Encryption
at_rest_encryption_enabled = true
transit_encryption_enabled = true
transit_encryption_mode    = "required"
kms_key_id                 = "arn:aws:kms:us-west-2:987654321098:key/prod-redis-key"
auth_token                 = "your-secure-auth-token"

# Backup & maintenance
snapshot_retention_limit = 35
snapshot_window          = "03:00-05:00"
maintenance_window       = "sun:05:00-sun:07:00"

# High availability
multi_az_enabled           = true
automatic_failover_enabled = true

# Monitoring & alarms
cloudwatch_metric_alarms_enabled = true
alarm_cpu_threshold_percent      = 75
alarm_memory_threshold_bytes     = 2147483648
alarm_actions                    = ["arn:aws:sns:us-west-2:987654321098:prod-alerts"]
ok_actions                       = []

# Parameter group
create_parameter_group = true
parameter_group_name   = "redis-prod-us-west-2-params"
parameter = [
  {
    name  = "maxmemory-policy"
    value = "allkeys-lru"
  }
]