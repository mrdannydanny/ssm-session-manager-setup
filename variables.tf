variable "vpc_cidr" {
  description = "vpc cidr"
  default     = "10.79.0.0/16"
}

variable "public_subnet01" {
  description = "public subnet ip range"
  default     = "10.79.1.0/24"
}

variable "s3_bucket_name" {
  description = "S3 bucket name"
  default     = "my-bucket-xxx-123456-test"
}

variable "cloudwatch_log_group_name" {
  description = "Cloudwatch Log Group name"
  default     = "my-loggroup-xxx-123456-test"
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "latest_ami_id" {
  description = "AMI"
  default     = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}
