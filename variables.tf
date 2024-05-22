variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  default     = "my-ecs-cluster"
}

variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  default     = "my-ecr-repo"
}

variable "app_name" {
  description = "The name of the application"
  default     = "my-app"
}

variable "app_image_tag" {
  description = "The Docker image tag for the application"
  default     = "latest"
}
