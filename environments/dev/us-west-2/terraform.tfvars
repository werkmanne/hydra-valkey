# # AWS Configuration
# aws_region              = "us-west-2"
# aws_account_id          = "123456789012"
# aws_assume_role_arn     = "arn:aws:iam::123456789012:role/terraform-assume-role"
# session_name            = "terraform-dev-us-west-2"

# # Repository labelling
# git_repo         = "https://github.com/your-org/redis-module.git"
# git_repo_name    = "redis-module"
# git_repo_version = "main"

# # Region for labels
# region = "us-west-2"

# # Required inputs
# vpc_id = "vpc-dev-us-west-2-001"

# # Context and naming
# name        = "redis-dev"
# namespace   = "hydra"
# environment = "dev"
# stage       = "development"

# # Elasticache configuration
# cluster_size      = 1
# instance_type     = "cache.t3.micro"
# engine_version    = "8.2"
# family            = "valkey8"
# port              = 6379

# # Network configuration
# subnets                       = ["subnet-dev-1", "subnet-dev-2"]
# availability_zones            = ["us-west-2a", "us-west-2b"]
# elasticache_subnet_group_name = "redis-dev-subnet-group"

# # Security
# allowed_security_group_ids = ["sg-dev-redis"]

# # Encryption
# at_rest_encryption_enabled = true
# transit_encryption_enabled = true
# transit_encryption_mode    = "preferred"
# kms_key_id                 = null
# auth_token                 = null

# # Backup & maintenance
# snapshot_retention_limit = 7
# snapshot_window          = "05:00-09:00"
# maintenance_window       = "sun:02:00-sun:03:00"

# # High availability
# multi_az_enabled           = false
# automatic_failover_enabled = false

# # Monitoring & alarms
# cloudwatch_metric_alarms_enabled = true
# alarm_cpu_threshold_percent      = 80
# alarm_memory_threshold_bytes     = 50000000
# alarm_actions                    = []
# ok_actions                       = []

# # Parameter group
# create_parameter_group = false
# parameter_group_name   = ""
# parameter              = []
