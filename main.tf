provider "aws" {}

resource "aws_cloudformation_stack" "ssm_session_manager" {
  name = "ssm-session-manager"

  parameters = {
    VpcCidr                = var.vpc_cidr
    PublicSubnetCidr       = var.public_subnet01
    S3BucketName           = var.s3_bucket_name
    CloudWatchLogGroupName = var.cloudwatch_log_group_name
    InstanceType           = var.instance_type
    LatestAmiId            = var.latest_ami_id
  }
  capabilities  = ["CAPABILITY_IAM"]
  template_body = file("${path.module}/templates/ssm-session-manager.yaml")
}
