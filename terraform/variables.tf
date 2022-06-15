# networking

variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.1.0/24"
}
variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
  default     = "10.0.2.0/24"
}
variable "private_subnet_1_cidr" {
  description = "CIDR Block for Private Subnet 1"
  default     = "10.0.3.0/24"
}
variable "private_subnet_2_cidr" {
  description = "CIDR Block for Private Subnet 2"
  default     = "10.0.4.0/24"
}
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["ap-northeast-2a", "ap-northeast-2b"]
}


# load balancer

variable "health_check_path" {
  description = "Health check path for the default target group"
  default     = "/ping/"
}

# log 

variable "log_retention_in_days" {
  default = 30
}

# key pair

variable "ssh_pubkey_file" {
  description = "Path to an SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}


# ecs

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  default     = "production"
}

variable "amis" {
  description = "Which AMI to spawn."
  default = {
    ap-northeast-2 = "ami-01669b936a269ef2d"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "docker_image_url_django" {
  description = "Docker image to run in the ECS cluster"
  default     = "741892569245.dkr.ecr.ap-northeast-2.amazonaws.com/django-terraform:latest"
}

variable "app_count" {
  description = "Number of Docker containers to run"
  default     = 2
}

