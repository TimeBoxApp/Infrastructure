resource "aws_db_subnet_group" "tfer--default-vpc-0cb738cfd7bf8c980" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0cb738cfd7bf8c980"
  subnet_ids  = ["subnet-01c8da1640ed830ef", "subnet-044b2f950de1475c7", "subnet-0a0c81a7da52cd124"]
}

resource "aws_db_subnet_group" "tfer--rds-ec2-db-subnet-group-1" {
  description = "Created from the RDS Management Console"
  name        = "rds-ec2-db-subnet-group-1"
  subnet_ids  = ["subnet-09b649ccf31cad751", "subnet-0e1a808b045a062ac", "subnet-0eccf0f537c3838d1"]
}
