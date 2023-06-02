terraform {
  ## Definação da plataforma utilizada (Ex: Aws, Azure)
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

  provider "aws" {
    region  = "us-west-2"
}

  resource "aws_instance" "app_server" {
    ## Acessar o painel da AWS e copiar o ami
    ami           = "ami-03f65b8614a860c29" 
    instance_type = "t2.micro"
    user_data = <<-EOF
                  #!/bin/bash
                  cd /home/ubuntu
                  echo "<h1>Feito com Terraform - 2 </h1>" > index.html
                  nohup busybox httpd -f -p 8080 &
                EOF
  tags = {
    Name = "Primeira instancia"
  }
}
