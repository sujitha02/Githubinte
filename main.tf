resource "aws_sqs_queue" "sqs_pipe" {
  name                      = "terraform-pipe-queue"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Environment = "Dev"
  }
}
