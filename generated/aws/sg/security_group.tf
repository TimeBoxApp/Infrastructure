resource "aws_security_group" "tfer--Ec2RedisAccess_sg-0ad625daff254e68a" {
  description = "Allows EC2 access Redis cluster"

  egress {
    from_port       = "6379"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--RedisEc2Access_sg-0d4e18d7a16528cca_id}"]
    self            = "false"
    to_port         = "6379"
  }

  name = "Ec2RedisAccess"

  tags = {
    Name = "FARGATE > REDIS"
  }

  tags_all = {
    Name = "FARGATE > REDIS"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--FargateToEcr_sg-048d38e1393e529e4" {
  description = "FARGATE to ECR"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "To access ECR"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "To access ECR"
    from_port   = "53"
    protocol    = "udp"
    self        = "false"
    to_port     = "53"
  }

  name = "FargateToEcr"

  tags = {
    Name = "FARGATE > ECR"
  }

  tags_all = {
    Name = "FARGATE > ECR"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--LoadBalancerDg_sg-02ebeeaa2e7d3a447" {
  description = "Allows access to 443 from everywhere"

  egress {
    description     = "Allow accessing fargate"
    from_port       = "3000"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--launch-wizard-1_sg-0a04b97b4b2d9572e_id}"]
    self            = "false"
    to_port         = "3000"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name = "LoadBalancerDg"

  tags = {
    Name = "ALB SG"
  }

  tags_all = {
    Name = "ALB SG"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--LocalDbAccess_sg-0ed3bbd98e0e1e089" {
  description = "Allows access from local machine"

  ingress {
    cidr_blocks = ["45.84.121.213/32"]
    description = "AXD VPN"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "LocalDbAccess"

  tags = {
    Name = "VPN > DB"
  }

  tags_all = {
    Name = "VPN > DB"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--RedisEc2Access_sg-0d4e18d7a16528cca" {
  description = "Allows Redis cluster accesss EC2"

  ingress {
    from_port       = "6379"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--Ec2RedisAccess_sg-0ad625daff254e68a_id}"]
    self            = "false"
    to_port         = "6379"
  }

  name = "RedisEc2Access"

  tags = {
    Name = "REDIS > FARGATE"
  }

  tags_all = {
    Name = "REDIS > FARGATE"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--SpectrumRdsAccess_sg-0f6715a6cd0cfa72f" {
  description = "Allows spectrum access db"

  egress {
    cidr_blocks = ["54.91.91.225/32"]
    description = "Testing Spectrum"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Testing Spectrum"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name   = "SpectrumRdsAccess"
  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--default_sg-0410b5f573a36a78d" {
  description = "default VPC security group"
  name        = "default"

  tags = {
    Name = "BLOCK ALL (default)"
  }

  tags_all = {
    Name = "BLOCK ALL (default)"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--ec2-rds-1_sg-0ab376280b749056d" {
  description = "Security group attached to instances to securely connect to timebox-db. Modification could lead to connection loss."

  egress {
    description     = "Rule to allow connections to timebox-db from any instances this security group is attached to"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--rds-ec2-1_sg-0e4e990d240cf3573_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "ec2-rds-1"

  tags = {
    Name = "FARGATE > RDS"
  }

  tags_all = {
    Name = "FARGATE > RDS"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--launch-wizard-1_sg-0a04b97b4b2d9572e" {
  description = "launch-wizard-1 created 2024-03-16T00:10:49.613Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "To access ECR"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "To access ECR"
    from_port   = "53"
    protocol    = "udp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    description     = "Allow access to FARGATE from ALB"
    from_port       = "3000"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--LoadBalancerDg_sg-02ebeeaa2e7d3a447_id}"]
    self            = "false"
    to_port         = "3000"
  }

  name = "launch-wizard-1"

  tags = {
    Name = "ALB > FARGATE > ECR"
  }

  tags_all = {
    Name = "ALB > FARGATE > ECR"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}

resource "aws_security_group" "tfer--rds-ec2-1_sg-0e4e990d240cf3573" {
  description = "Security group attached to timebox-db to allow EC2 instances with specific security groups attached to connect to the database. Modification could lead to connection loss."

  ingress {
    description     = "Rule to allow connections from EC2 instances with sg-0ab376280b749056d attached"
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ec2-rds-1_sg-0ab376280b749056d_id}"]
    self            = "false"
    to_port         = "3306"
  }

  name = "rds-ec2-1"

  tags = {
    Name = "RDS > FARGATE"
  }

  tags_all = {
    Name = "RDS > FARGATE"
  }

  vpc_id = "vpc-0cb738cfd7bf8c980"
}
