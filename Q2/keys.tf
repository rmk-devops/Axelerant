resource "aws_key_pair" "example" {
  key_name   = "example"
  public_key = "ssh-rsa AAAAAAAAAA CHANGE ME TO YOUR PUBLIC KEY"
}
