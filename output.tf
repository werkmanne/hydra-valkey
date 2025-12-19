output "arn" {
  description = "Elasticache Replication Group ARN"
  value       = module.elasticache_redis.arn
}

output "endpoint" {
  description = "Redis primary, configuration or serverless endpoint, whichever is appropriate for the given configuration"
  value       = module.elasticache_redis.primary_endpoint_address
}
