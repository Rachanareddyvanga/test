resource "aws_instance" "dependency" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "Rachana"
    tags = {
      Name = "dependency" 
    }
  
}
resource "aws_s3_bucket" "dependency" {
    bucket="dependecy-s3-pracrtice"
    depends_on = [aws_instance.dependency]

}