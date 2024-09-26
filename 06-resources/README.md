## Steps for implementation:
1. [x] Deploy a VPC and a subnet
2. [x] Deploy an internet gateway and associate it with the VPC
3. [x] Set up a route table with a route to the IGW and associate it with the subnet
4. [x] Deploy an EC2 instance inside the created subnet and associate a public IP
5. [x] Associate a security group that allows public ingress
6. [x] Change the EC2 instance to use a publicly available NGINX AMI
7. [x] Destroy everything