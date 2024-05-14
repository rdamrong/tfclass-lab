provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_security_group" "rds_sg" {
  name = "rds_sg0"
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "myrds" {
  identifier                 = "tfclass-db-student0"
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "tfclass"
  password             = "myadminpassword"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  vpc_security_group_ids = ["${aws_security_group.rds_sg.id}"]
  publicly_accessible =  true
}

output "rds_address" {
   value = aws_db_instance.myrds.address
}

