provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "app" {
  name = var.project_name
  
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = var.tags
}

output "repository_url" {
  value = aws_ecr_repository.app.repository_url
}