# This sample will build:

- VPC, InternetGateway, VPCGatewayAttachment,  Public Subnet, RouteTable, Default Route, SubnetRouteTableAssociation
- S3 Bucket (used to store SSM session manager logs comming from EC2)
- CloudWatch Log Group (another place where the logs comming from EC2 will be available)
- SSM Document (responsible for configuring the SSM session preferences using the s3 bucket/cloudwatch log groups created in this sample)
- Ec2InstanceProfile / Ec2InstanceRole (the role used will be AmazonEC2RoleforSSM which will make it possible for the EC2 instances to access ssm/s3/cloudwatch)
- EC2 Instance (intended for tests/checking if the setup is working properly)