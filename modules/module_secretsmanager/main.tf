#########https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret



resource "aws_secretsmanager_secret" "example" {
  name = "secretsmanager_secret_1_example"

  description             = "secretsmanager PW "
  recovery_window_in_days = 0 ## This value can be 0 to force deletion without recovery or range from 7 to 30 days. The default value is 30.
  tags                    = { "johntags" = "1" }
}


resource "aws_secretsmanager_secret_version" "example" {
  secret_id = aws_secretsmanager_secret.example.id
  secret_string = jsonencode({
    password = "your_secret_password_here"
  })
}
### add passwords of git hub or docker hub 
##############################################
