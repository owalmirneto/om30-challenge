variable "ssh_public_key_path" {
  type      = string
  sensitive = true
  default   = "../ssh/om30-challenge.pub"
}

resource "aws_key_pair" "devops_ssh_key" {
  key_name   = local.application_name
  public_key = file(var.ssh_public_key_path)
}
