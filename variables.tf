variable "project" {
    type        = string
    description = "Project Title (yesmust use lowercase letters)"
    default     = "ECS-Demo"
}

variable "region" {
    type        = string
    description = "Default Region for Project"
    default     = "us-east-1"
}
variable "vpc_cidr" {
    type        = string
    description = "Project Title"
    default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24"]
}
 
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.0.2.0/24", "10.0.4.0/24", "10.0.6.0/24"]
}

variable "azs" {
 type        = list(string)
 description = "Availability Zones"
 default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "AMI" {
    type        = string
    description = "Project Title"
    default     = "ami-054c337ee5048c313"
}

variable "db_name" {
    type        = string
    description = "Database Name"
    default     = "mongo-crud"
}

variable "ecr_name" {
    type        = string
    description = "ECR Repo Name"
    default     = "crud"
}

variable "ecs_cluster_name" {
    type = string
    description = "ECS Cluster Name"
    default = "mongo-crud"
}

variable "aws_ecs_service_name" {
    type = string
    description = "ECS service name"
    default = "crud-service"
}

variable "lg_user_data" {
    type        = string
    description = "Project Title"
    default     = "#!/bin/bash \n echo ECS_CLUSTER=my-cluster >> /etc/ecs/ecs.config"
}

variable "asg_instance_type" {
    type        = string
    description = "Instance Type"
    default     = "t2.micro"
}

variable "key_name" {
    type        = string
    description = "Key Name"
    default     = "Promact"
}

variable "desired_capacity" {
    type        = number
    description = "Desired number of Instances ASG can Create."
    default     = 1
}

variable "min_size" {
    type        = number
    description = "Minimum Number of Instances ASG can Create."
    default     = 1
}

variable "max_size" {
    type        = number
    description = "Maximum Number of Instances ASG can Create."
    default     = 5
}

variable "health_check_grace_period" {
    type        = number
    description = "Instance Type"
    default     = 300
}

variable "db_instance_class" {
    type        = string
    description = "Instance Type"
    default     = "db.t3.micro"
}

