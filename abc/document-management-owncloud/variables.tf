# Variables referenced in main.tf
# 
# Note: I recommend supplying the access_key, secret_key, ecs_password, and db_password
# on the command line using the "-var" flag, or via environment variables. Do NOT hardcode
# passwords or keys here. You will forget about them and then you'll have BIG problems when you 
# check variables.tf into version control on a service like Github. You will have a Bad Time™.
variable "access_key" {
    # No default, must be provided on command line or via environment variable
    description = "Alibaba Cloud Access Key ID"
    default = ""
}

variable "secret_key" {
    # No default, must be provided on command line or via environment variable
    description = "Alibaba Cloud Secret Key"
    default = ""
}

# Password for ECS instance login
variable "ecs_password" {
    description = "ECS Login Password (for root)"
    default = ""
}

# Settings for owncloud database
variable "db_name" {
    description = "Database Name (needed by ownCloud)"
    default = "ownclouddb"
}

variable "db_username" {
    description = "Database Username (needed by ownCloud - this user has ReadWrite access)"
    default = "owncloud"
}

variable "db_password" {
    description = "RDS database password (for database login, needed by ownCloud)"
    default = ""
}

# Set default region to Singapore (ap-southeast-1)
variable "region" {
    description = "Region in which to deploy resources (RDS, ECS, EIP)"
    default = "ap-southeast-1"
}