resource "aws_lambda_function" "this" {
  function_name = var.lambda_function_name
  role          = var.iam_role_arn
  package_type  = "Image"
  image_uri     = "${var.ecr_repository_url}:latest"
  memory_size = 512
  timeout     = 30
  tracing_config {
    mode = "Active"  
  }
 # environment {
  #  variables = {
   #   ENV = "dev"
    #}
  #}
}

resource "aws_cloudwatch_log_group" "lambda_logs" {
  name              = "/aws/lambda/${var.lambda_function_name}"
  retention_in_days = 7  # Set log retention period

  tags = {
    Environment = "dev"
  }
}
