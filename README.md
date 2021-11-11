# This sample will build:

- VPC, InternetGateway, VPCGatewayAttachment,  Public Subnet, RouteTable, Default Route, SubnetRouteTableAssociation
- S3 Bucket (used to store SSM session manager logs comming from EC2)
- CloudWatch Log Group (another place where the logs comming from EC2 will be available)
- SSM Document (responsible for configuring the SSM session preferences using the s3 bucket/cloudwatch log groups created in this sample)
- Ec2InstanceProfile / Ec2InstanceRole (the role used will be AmazonEC2RoleforSSM which will make it possible for the EC2 instances to access ssm/s3/cloudwatch)
- EC2 Instance (intended for tests/checking if the setup is working properly)

### Important

1. Apparently there is a bug on SSM Documents when it comes to `SessionManagerRunShell`. If you notice that you are having trouble removing this document (in case it already exists or you want to deploy this setup multiple times) remove it using the cli as shown below:

`aws ssm delete-document --name SSM-SessionManagerRunShell --region <region-you-are-deploying>`

2. Before performing the terraform destroy operation, make sure your s3 bucket is empty.