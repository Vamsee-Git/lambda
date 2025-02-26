output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "lambda_function_arn" {
  value = module.lambda.lambda_function_arn
}

output "api_gateway_url" {
  description = "URL of the deployed API Gateway"
  value       = module.api_gateway.api_gateway_endpoint
}