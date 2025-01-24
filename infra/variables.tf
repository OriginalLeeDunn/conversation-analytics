variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "conversation-analytics"
}

variable "environment" {
  description = "Environment (e.g., production, development)"
  type        = string
  default     = "production"
}

variable "tags" {
  description = "Default tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "production"
    Project     = "conversation-analytics"
    ManagedBy   = "terraform"
  }
}